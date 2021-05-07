var jwtUtils = require('../utils/jwt.utils');
var models = require('../models');

module.exports = {
 
    token: function(req, res){
         var email = req.body.email;
       

         if(email == null){
             return res.status(400).json({'error' : 'paramètres manquant'});
         }

         models.Utilisateur.findOne({
             attributes: ['email'],
             where: {email: email}
         })
         .then(function(userFound) {
            if(!userFound){

                var newUser = models.Utilisateur.create({
                       email: email,
                       
                })
                .then(function(newUser){
                    return res.status(201).json({
                        'email': newUser.email,
                        'token': jwtUtils.generateTokenForUser(newUser)
                        
                    })
                })
                .catch(function(err){
                    return res.status(500).json({'error' : 'On ne peux pas ajouter d`utilisateur'});
                });

            }else{
                return res.status(409).json({'error' : 'l`Utilisateur existe déjà'});
            }
         })
         .catch(function(err) {
           return res.status(500).json({ 'error' : 'unable to verify'});
         });
    }
}