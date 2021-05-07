'use strict';

module.exports = (sequelize, DataTypes) => {
  var Utilisateur = sequelize.define('Utilisateur', {
    email: DataTypes.STRING,
    date_creation: DataTypes.DATE
  }, {
      classMethods: {
        associate: function(models){
          models.Utilisateur.hasMany(models.Texte);
        }
      }
  });
  
  return Utilisateur;
};