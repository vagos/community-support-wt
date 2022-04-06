const express = require('express');
const router = express.Router();

//middleware that is specific to this router
router.use((req , res, next) => {
    console.log(`Time:${Date.now()} Request:${req.url}`);
    next();
});

/* testing */

const db = require('../scripts/db');

//define the home page route
router.get('/', (req, res) => {

    db.query('SELECT * FROM activity', (err, results) => {
        res.render('index', { activities : results });
    });

});

router.get('/authors', (req, res) => {
    res.sendFile('epic.gif', {root: './public'});
});

module.exports = router;
