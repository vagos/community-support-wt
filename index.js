const express = require('express');
const handlebars = require('express-handlebars');

const db = require('./controllers/db.js');

//import routes
const index_router = require('./routes/index.js');

//initialize app
const app = express();
const port = 3000;

//Intermediary for public files (Makes life easier and more secure) 
app.use(express.static(__dirname + '/public'));

//Set rendering engine (file ext name will be .hbs)
app.engine('hbs', handlebars.engine({extname:'.hbs'})); 
app.set('view engine', 'hbs');
app.set('views', './views')

app.use('/', index_router);

app.listen(port , () => {
    console.log(`Example app listening on port ${port}`);
    
    db.connection.connect( (err) => {
        console.log('Connected to db!');
    });

});


