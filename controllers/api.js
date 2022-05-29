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
    allComments = await db.query(`SELECT COUNT(*) as cnt , body
    FROM comment WHERE comment.creator = ?`, [id]);

    allPosts = await db.query(`SELECT COUNT(*) as cnt
    FROM post WHERE post.creator = ?
        `, [id]);

    allActivity = await db.query(`SELECT activity.name, COUNT(*) as points
        FROM post JOIN activity ON post.activity = activity.id WHERE creator =
        ? GROUP BY post.activity;`
        , [id]);
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
    console.log(posts_per_month);
    return {
        AllTimeComments: allComments,
        AllTimePosts: allPosts,
        AllTimeParticipation: allActivity,
        PastMonthComments: pastMonthComments,
        PastMonthPosts: pastMonthPosts,
        // PostsPerMonth: posts_per_month,
    };
}


//Posts
exports.getAllPosts = async () => {
    posts = await db.query('SELECT id, name FROM post');
    return posts;
}

exports.getPostStats = async (id) => {
    post = await db.queryOne('SELECT body, creation_time FROM post WHERE id = ?', [id]);
    if (post.length === 0) {
        return {}
    }
    numberOfComments = await db.query('SELECT COUNT(*) as cnt FROM comment WHERE post = ?', [id]);
    mostRecentComment = await db.query('SELECT body, creation_time FROM comment WHERE post = ? ORDER BY creation_time DESC LIMIT 1', [id]);
    creatorName = await db.query('SELECT name FROM user WHERE id = ?', [id]);
    return {
        numberOfComments: numberOfComments,
        mostRecentComment: mostRecentComment,
        creatorName: creatorName,
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
    return {
        activityName: activityName,
        numberOfPosts: numberOfPosts,
        postsIds: postsIds,
        mostRecentPost: mostRecentPost,
    }
}
