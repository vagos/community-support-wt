const express = require('express');
const handlebars = require('express-handlebars');
const passport = require('passport');
const cookieParser = require('cookie-parser');
const session = require('express-session');
const logger = require('morgan');
const flash = require('connect-flash');
var fs = require('fs')
var path = require('path')

const SQLiteStore = require('connect-sqlite3')(session); // store for sessions

require('dotenv').config();

const db = require('./controllers/db.js');

// Routes
const index_router = require('./routes/index.js');

const app = express();
const port = process.env.NODE_DOCKER_PORT || 8080;

// Intermediary for public files 
app.use(express.static(__dirname + '/public'));

// Logging

var accessLogStream = fs.createWriteStream(path.join(__dirname, 'dev/access.log'), { flags: 'a' })
app.use(logger('dev', { stream: accessLogStream }));

app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.use(cookieParser());
app.use(session({
    secret: 'mysecret',
    resave: false,
    saveUninitialized: false,
    store: new SQLiteStore({ db: 'sessions.db', dir: './db/sqlite' })
}));
app.use(flash());

app.use(passport.authenticate('session'));


// Set rendering engine 
app.engine('hbs', handlebars.engine({
    extname: '.hbs',
    helpers: require('./views/handlebars-helpers') //only need this
}));
app.set('view engine', 'hbs');
app.set('views', './views')

app.use('/', index_router);

server = app.listen(port, async () => {
    console.log(`Example app listening on port ${port}`);

    db.connection.connect((err) => {
        if (err) throw err;
        // db.fill();
    });
    

});

module.exports = { 
    app: app,
    server: server,
}
