'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('Textes', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      idUtilisateurs: {
        allowNull: false,
        type: Sequelize.INTEGER,
        reference:{
          model: 'Utilisateurs',
          key: 'id'
        }
      },
      valeur_texte: {
        allowNull: false,
        type: Sequelize.INTEGER
      },
      texte:{
           allowNull: false,
           type: Sequelize.STRING
      },
      date: {
        allowNull: false,
        type: Sequelize.DATE
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('Textes');
  }
};