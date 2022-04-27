const passport = require('passport');
const express = require('express');
const controller = require('../controllers/login');

const router = express.Router();


router.get('/', (req, res, next) => {

    res.render('login');

});

router.get('/signup', (req, res, next) => {
    res.render('signup');
});

router.post('/signup', function(req, res, next) { 
    
    controller.signupUser(req.body.username, req.body.password);
    res.redirect('/login');
    
});

router.post('/password', passport.authenticate('local', {
  successReturnToOrRedirect: '/',
  failureRedirect: '/login',
  failureFlash: true
}));

module.exports = router;
