const express = require('express');
const router = express.Router();

const controller = require('../controllers/profile');

//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

router.patch('/change-bio', (req, res) => {
   
    controller.changeUserBio(req.session.passport.user.id, req.body.bio);
    res.sendStatus(200);

});

router.get('/', async (req, res) => {

    if (!req.session) {
        res.render('profile');
        return
    }

    user = {
        name: req.session.passport.user.username
    };

    console.log(req.session.passport)

    other = await controller.getUserObject('Anna Triangle', 1);

    res.render('profile', { title:'profile', 'user': user});
});

module.exports = router;
