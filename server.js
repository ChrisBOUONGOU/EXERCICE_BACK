//Import
var express = require("express");
var bodyParser = require('body-parser');
var apiRouter = require('./apiRouter').router;




const mysql = require('mysql');
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'database_development_justify'
});

connection.connect(function(err) {
    if (!err) {
        console.log('CONNECTER AVEC SUCCES')

    }
    else {
        console.log('DB FAILED ERROR : ' + JSON.stringify(err,undefined, 2))

    }
});


// Instancier le server
var server = express();

//COnfiguration du Body Parser
server.use(bodyParser.urlencoded({ extended: true }));
server.use(bodyParser.json());
// Initialisation de l'application
server.get('/', function(req,res){
    res.setHeader('Content-Type', 'text/html');
    res.status(200).send('<p>Bonjour</p>');
})


server.use('/api/', apiRouter);
server.use(bodyParser.text());

server.post('/api/justify', (req,res) => {
    var justifying = req.body;
    compteur = 0;
    arrIndex = [];

    while (compteur < justifying.length){
        compteur += 80;
        if(compteur < justifying.length){
            arrIndex.push(compteur);
        }
    }

    textjustifying = [];

    arrIndex.forEach(function(element){
        textjustifying.push(justifying.slice(element-80, element));
    });
    textjustifying.push(justifying.slice(arrIndex[arrIndex.length-1], justifying.length));

    var text_justifying = textjustifying.join("\n");
    res.send(text_justifying);
    
    connection.query("INSERT INTO textes (idUtilisateurs,date,valeur_texte) VALUES (1, NOW(), ?)", justifying.length, (err, rows, fields) => {
        if (!err)
            console.log('envoyer avec succées dans la bdd (nombre de lettre)');
        else
            console.log(err);
    });

});

//Lancer le server
server.listen(8080, function() {
    console.log("server démarrer");
});

