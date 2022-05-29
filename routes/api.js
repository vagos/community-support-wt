const express = require('express');
const router = express.Router();
const util = require('../controllers/util.js');

router.use((req, res, next) => {
    next();
});

const controller = require('../controllers/api');

router.get('/users', async (req, res) => {
    users = await controller.getAllUsers();
    res.json(users);
});

router.get('/users/:id', async (req, res) => {
    stats = await controller.getUserStats(req.params.id);
    res.json(stats);
})

router.get('/posts', async (req, res) => {
    posts = await controller.getPosts();
    res.json(posts);
})

router.get('/posts/:id', async (req, res) => {
    stats = await controller.getPostStats(req.params.id);
    res.json(stats);
})

router.get('/activity', async (req, res) => {
    activities = await controller.getAllActivities();
    res.json(activities);
})

router.get('/activity/:id', async (req, res) => {
    stats = await controller.getActivityStats(req.params.id);
    res.json(stats);
})
module.exports = router;