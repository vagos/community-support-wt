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

router.get('/user-stats/:userId', (req, res) => {
    id = req.params.userId;
    stats = controller.getUserStats(id);

    res.json(stats);
});

router.get('/', async (req, res) => {

    if (req.isUnauthenticated()) {
        res.redirect('/');
        return;
    }

    user = await controller.getUserObject(req.session.passport.user.id);

    res.render('profile', { title:'profile', authenticated: req.isAuthenticated(), 'user': user, 'self': true }); // self means that the user's SELF is accessing their profile.
});

module.exports = router;
