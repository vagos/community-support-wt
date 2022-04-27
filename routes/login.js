const express = require('express');
const controler = require('../controllers/login');
const passport = require('passport');

const router = express.Router();


router.get('/', (req, res, next) => {

    res.render('login');

});


router.post('/password',
    passport.authenticate('local', {

        sucessRedirect: '/',
        failureRedirect: '/login'

    }));


router.get('/signup', (req, res, next) => {
    res.render('signup');
});

// move this to controller
const crypto = require('crypto');
const db = require('../controllers/db');

router.post('/signup', function(req, res, next) { 
    var salt = crypto.randomBytes(16);

    crypto.pbkdf2(req.body.password, salt, 310000, 32, 'sha256', function(err, hashedPassword) {
        if (err) { return next(err); }
        db.connection.query('INSERT INTO user (name, hashed_password, salt) VALUES (?, ?, ?)', [
            req.body.username,
            hashedPassword,
            salt
        ], function(err) {
            if (err) { throw err; }
            var user = {
                id: this.lastID,
                username: req.body.username
            };
            res.redirect('/');
        });
    });
});

module.exports = router;
