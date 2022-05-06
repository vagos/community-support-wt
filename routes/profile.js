const express = require('express');
const router = express.Router();

const controller = require('../controllers/profile');

//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

router.get('/', async (req, res) => {

    user = {
        name: req.session.passport.user.username
    };

    console.log(req.session.passport)

    other = await controller.getUserObject(req.session.passport.user.username, req.session.passport.user.id);
    console.log(other)

    res.render('profile', { title:"profile", 'user': user});
});

module.exports = router;
