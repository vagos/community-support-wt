const passport = require('passport');
const express = require('express');
const controller = require('../controllers/login');

const router = express.Router();


router.get('/', (req, res) => {
    res.render('login', { title: 'login', errors: req.session.flash.error });
    req.session.flash.error = []
});

router.get('/signup', (req, res) => {
    res.render('signup');
});

router.get('/logout', (req, res) => {
    req.logOut();
    res.redirect('/');
});

router.post('/signup', function(req, res, next) { 
    
    controller.signupUser(req.body.username, req.body.password, (user) => {
        req.login(user, (err) => {
            if (err) { throw (err); }
            res.redirect('/profile');
        });
    });
});

router.post('/password', passport.authenticate('local', {
  successReturnToOrRedirect: '/profile',
  failureRedirect: '/login',
  failureFlash: true
}));

module.exports = router;
