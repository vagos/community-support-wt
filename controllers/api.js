const db = require('./db');

// Users
exports.getAllUsers = async () => {
    users = await db.query('SELECT name, id FROM user');
    return users;
}

exports.getUserStats = async (id) => {
    user = await db.query('SELECT name , id FROM user WHERE id = ?', [id]);
    if (user.length === 0) {
        return {};
    }
    allComments = await db.query(`SELECT post, body
    FROM comment WHERE comment.creator = ?`, [id]);
    // console.log(allComments)
    let comments = []
    for (let i of allComments) {
        let comment = {
            postId: i.post,
            body: i.body
        }
        comments.push(comment)
    }
    allPosts = await db.query(`SELECT id, name, creation_time FROM post 
    WHERE creator = ?`, [id]);
    let posts = [];
    for (let i of allPosts) {
        let post = {
            postId: i.id,
            name: i.name,
            creation_time: i.creation_time,
        }
        posts.push(post);
    }
    allActivity = await db.query(`SELECT activity.name, COUNT(*) as points
        FROM post JOIN activity ON post.activity = activity.id  WHERE creator =
        ? GROUP BY post.activity;`
        , [id]);
    joinedActivities = await db.query(`SELECT activity.name, activity.id, participation.join_date
    FROM activity JOIN participation ON activity.id = participation.activity
    WHERE participation.user = ?;`, [id]);


    // joinedActivity = await db.query(`SELECT name, joined_date FROM activity WHERE `)sssssssssssssssss
    pastMonthComments = await db.query(`SELECT COUNT(*) as cnt FROM comment WHERE comment.creator = ? 
    AND DATEDIFF(comment.creation_time, CURDATE()) <= 31`, [id]);
    pastMonthPosts = await db.query(`SELECT COUNT(*) as cnt FROM post WHERE post.creator = ? 
    AND DATEDIFF(post.creation_time, CURDATE()) <= 31 AND DATEDIFF(post.creation_time, CURDATE()) >= 0`, [id]);
    posts_per_month = await db.query(`SELECT COUNT(*) as cnt, DATE_FORMAT(post.creation_time, '%m/%y') as monthYear
        FROM post WHERE post.creator = ? 
        GROUP BY monthYear
        ORDER BY monthYear
            `, [id]);
    comments_per_month = await db.query(`SELECT COUNT(*) as cnt, DATE_FORMAT(comment.creation_time, '%m/%y') as monthYear
        FROM comment WHERE comment.creator = ?
        GROUP BY monthYear
        ORDER BY monthYear`, [id]);
    // console.log(posts_per_month);
    return {
        AllTimeComments: comments,
        AllTimePosts: posts,
        AllTimeParticipation: allActivity,
        JoinedActivities: joinedActivities,
        PastMonthComments: pastMonthComments[0].cnt,
        PastMonthPosts: pastMonthPosts[0].cnt,
        // PostsPerMonth: posts_per_month,
    };
}


//Posts
exports.getAllPosts = async () => {
    posts = await db.query('SELECT id, name FROM post');
    return posts;
}

exports.getPostStats = async (id) => {
    post = await db.queryOne('SELECT body, creator, creation_time FROM post WHERE id = ?', [id]);
    if (post.length === 0) {
        return {}
    }
    creatorId = post.creator;
    // console.log(post)
    numberOfComments = await db.query('SELECT COUNT(*) as cnt FROM comment WHERE post = ?', [id]);
    mostRecentComment = await db.query('SELECT body, creation_time FROM comment WHERE post = ? ORDER BY creation_time DESC LIMIT 1', [id]);
    creatorName = await db.query('SELECT name FROM user WHERE id = ?', [creatorId]);
    creator = {
        name: creatorName[0].name,
        id: creatorId,
    }
    return {
        numberOfComments: numberOfComments[0].cnt,
        mostRecentComment: mostRecentComment[0],
        creator: creator,
    }
}


// Activities
exports.getAllActivities = async () => {
    activities = await db.query('SELECT name, id FROM activity');
    return activities;
}

exports.getActivityStats = async (id) => {
    activity = await db.queryOne('SELECT name, id FROM activity WHERE id = ?', [id]);
    if (activity.length === 0) {
        return {}
    }
    activityName = await db.query('SELECT name FROM activity WHERE id = ?', [id]);
    numberOfPosts = await db.query('SELECT COUNT(*) as cnt FROM post WHERE activity = ?', [id]);
    postsIds = await db.query('SELECT id FROM post WHERE activity = ?', [id]);
    mostRecentPost = await db.query('SELECT id , body, creation_time FROM post WHERE activity = ? ORDER BY creation_time DESC LIMIT 1', [id]);
    let postIds = []
    for (let i of postsIds) {
        postIds.push(i.id)
    }
    return {
        activityName: activityName[0].name,
        numberOfPosts: numberOfPosts[0].cnt,
        postsIds: postIds,
        mostRecentPost: mostRecentPost[0],
    }
}
