const express = require('express');
const handlebars = require('express-handlebars');

//import routes
const home = require('./routes/home.js');

//initialize app
const app = express();
const port = 3000;

//Intermediary for public files (Makes life easier and more secure) 
app.use(express.static(__dirname + '/public'));

//Set rendering engine (file ext name will be .hbs)
app.engine('hbs', handlebars.engine({extname:'.hbs'})); 
app.set('view engine', 'hbs');
app.set('views', './views')

app.use('/', home);

app.listen(port , () => {
    console.log(`Example app listening on port ${port}`);
});
