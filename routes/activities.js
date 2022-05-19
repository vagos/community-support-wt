const express = require('express');
const router = express.Router();

//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

const controller = require('../controllers/activites');

function getRandomColorRGB(s) { // TODO move this

    function rnd(n) {
    
    for (let i = 0; i < 10; i++) {
        n = n ^ ( n * 19 );
    }

    return Math.abs(n);
}

    function numberifyString(s) {
        let r = 0;

        for (let i = 0; i < s.length; i++) {
           r += s.codePointAt(i); 
        }

        return r;
    }

    seed = numberifyString(s);
    return `rgb(${rnd(seed) % (255)}, ${rnd(seed + 1) % (255)},
        ${rnd(seed + 2) % (255)})`;
}

//define the home page route for activities
router.get('/', (req, res) => {


    controller.getExtendedAll( (activities) => {

        activities.forEach( (v) => {
            v.color = getRandomColorRGB(v.name);
        });

        res.render('activities',{title:'activities', authenticated: req.isAuthenticated(), activities: activities});
    });

});

router.get('/:activityId', (req, res) => {

    activityName = req.params.activityId;

    controller.getExtendedPosts(activityName, (posts) => {
        
        res.render('activity', { name : activityName, 
            posts: posts,
            authenticated: req.isAuthenticated(),
        });
    });
});

module.exports = router;
