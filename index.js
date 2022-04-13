const express = require('express');
const handlebars = require('express-handlebars');

require('dotenv').config();

const db = require('./controllers/db.js');

// Routes
const index_router = require('./routes/index.js');

const app = express();
const port = process.env.NODE_DOCKER_PORT || 8080;

// Intermediary for public files 
app.use(express.static(__dirname + '/public'));

// Set rendering engine 
app.engine('hbs', handlebars.engine({
  extname: '.hbs',
  helpers: require('./views/handlebars-helpers') //only need this
}));
app.set('view engine', 'hbs');
app.set('views', './views')

app.use('/', index_router);

app.listen(port , () => {
    console.log(`Example app listening on port ${port}`);
    
    db.connection.connect( (err) => {
        if (err) throw err;
        console.log('Connected to db!');
    });
});


