var jwt = require('jsonwebtoken');

const JWT_SIGN_SECRET = '0qsdqsdsqdsq23sdjqskjdhqsjhdbqsjdh2ddfdsfsf6qsdqsdqsd10qqd';

module.exports = {
    generateTokenForUser: function(userData){
       return jwt.sign({
           userId: userData.id

       },
       JWT_SIGN_SECRET)
    }
}