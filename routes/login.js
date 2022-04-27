const express = require('express');
const controler = require('../controllers/login');
const passport = require('passport');

const router = express.Router();


router.get('/', (req, res, next) => {

    res.render('login');

});

router.get('/signup', (req, res, next) => {
    res.render('signup');
});

router.post('/password', 
    passport.authenticate('local', {

        sucessRedirect: '/',
        failureRedirect: '/login'

}));

module.exports = router;
