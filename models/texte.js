'use strict';
module.exports = (sequelize, DataTypes) => {
  var Texte = sequelize.define('Texte', {
    idUtilisateurs: DataTypes.INTEGER,
    valeur_texte: DataTypes.INTEGER,
    date: DataTypes.DATE

  }, {
    classMethods: {
      associate: function(models){
        models.Texte.belongsTo(models.Utilisateur, {
          foreignKey: {
            allowNull: false
          }
      })
    }
  }
});
  
  return Texte;
};