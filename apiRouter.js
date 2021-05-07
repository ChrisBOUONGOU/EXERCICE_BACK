var express = require('express');
var usersCtrl = require('./routes/userCtrl');


exports.router = (function(){
     var apiRouter = express.Router();

     
     apiRouter.route('/token/').post(usersCtrl.token);

     return apiRouter;
})();