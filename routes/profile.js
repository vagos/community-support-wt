const express = require('express');
const router = express.Router();

//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

router.get('/', (req, res) => {

    res.render('profile', { title:"Profile Title" });
});

module.exports = router;
