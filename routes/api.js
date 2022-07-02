const express = require('express');
const router = express.Router();
const util = require('../controllers/util.js');

router.use((req, res, next) => {
    next();
});

const controller = require('../controllers/api');

/**
 * @swagger
 * /api/users:
 *   get:
 *     summary: Returns all users
 *     tags: [Users]
 *     responses:
 *       200:
 *         description: the list of the posts
 *         content:
 *           application/json:
 *             schema:
 *               example:
 *                  name: "Username"
 *                  id: 1
 */
router.get('/users', async (req, res) => {
    users = await controller.getAllUsers();
    res.json(users);
});

/**
 * @swagger
 * /api/users/{userId}:
 *   get:
 *     summary: Return data for specific user
 *     tags: [Users]
 *     parameters:
 *     - in: path
 *       name: userId
 *       description: User id to retrieve
 *       required: true
 *       schema:
 *         type: integer
 *     responses:
 *       200:
 *         description: data for a specific user
 *         content:
 *           application/json:
 *             schema:
 *               example:
 *                   AllTimeComments:
 *                    - cnt: 2
 *                      body: "This contains the first ever comment of the user"
 *                   AllTimePosts:
 *                    - cnt: 1
 *                   AllTimeParticipation:
 *                    - name: "First Joined Activity"
 *                      points: 2
 *                    - name: "Second Joined Activity"
 *                      points: 1
 *                   PastMonthComments:
 *                    - cnt: 3
 *                   PastMonthPosts:
 *                    - cnt: 2  
 */
router.get('/users/:id', async (req, res) => {
    stats = await controller.getUserStats(req.params.id);
    res.json(stats);
})

/**
 * @swagger
 * /api/posts:
 *   get:
 *     summary: Returns all posts
 *     tags: [Posts]
 *     responses:
 *       200:
 *         description: the list of the posts
 *         content:
 *           application/json:
 *             schema:
 *               example:
 *                  id: 1
 *                  name: "Post title here"
 */
router.get('/posts', async (req, res) => {
    posts = await controller.getAllPosts();
    res.json(posts);
})

/**
 * @swagger
 * /api/posts/{postId}:
 *   get:
 *     summary: Return data for specific post
 *     tags: [Posts]
 *     parameters:
 *     - in: path
 *       name: postId
 *       description: Post id to retrieve
 *       required: true
 *       schema:
 *         type: integer
 *     responses:
 *       200:
 *         description: data of a specific post
 *         content:
 *           application/json:
 *             schema:
 *               example:
 *                   numberOfComments:
 *                      cnt: 1
 *                   mostRecentComment:
 *                      body: "Comment body here"
 *                      creation_time: "2022-04-17T21:00:00.000Z"
 *                   creatorName:
 *                      name: "Post creator name here" 
 */
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