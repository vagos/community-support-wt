const db = require('./db');
const util = require('./util');

exports.getAll = ( cb ) => {
    
    db.connection.query('SELECT name, id FROM activity', (err, rows) => { if (err) throw err; cb(rows); });
};

exports.getPosts = (activityName, cb) => {

    db.connection.query(`SELECT post.id, post.name, post.body FROM post 
        JOIN activity ON activity.id = post.activity WHERE activity.name = ?`, activityName,
    (err, rows) => { if (err) throw err; cb(rows) });
};

// Returns extended activities (activity + total users + total posts) for all activities
exports.getExtendedAll = ( cb ) => {

    db.connection.query(`SELECT activity.* ,info.userCount, info.postCount 
    FROM activity JOIN (SELECT users.id ,users.userCount, posts.postCount FROM (SELECT activity.id , COUNT(participation.activity) AS userCount FROM activity LEFT JOIN participation ON participation.activity = activity.id GROUP BY activity.id) AS users JOIN (SELECT activity.id , COUNT(post.activity) AS postCount FROM activity LEFT JOIN post ON post.activity = activity.id GROUP BY activity.id) AS posts ON users.id = posts.id) AS info 
        ON activity.id = info.id `,
    (err, rows) => { 
        if (err) throw err; 

        rows.forEach( (v) => {
            v.color = util.getRandomColorRGB(v.name);
        });

        cb(rows); 

    });

};

exports.getAllPaginated = ( page, cb ) => {

    const postsPerPage = 5;

    db.connection.query(`SELECT activity.* ,info.userCount, info.postCount 
    FROM activity JOIN (SELECT users.id ,users.userCount, posts.postCount FROM (SELECT activity.id , COUNT(participation.activity) AS userCount FROM activity LEFT JOIN participation ON participation.activity = activity.id GROUP BY activity.id) AS users JOIN (SELECT activity.id , COUNT(post.activity) AS postCount FROM activity LEFT JOIN post ON post.activity = activity.id GROUP BY activity.id) AS posts ON users.id = posts.id) AS info 
        ON activity.id = info.id
        LIMIT ${page * postsPerPage}, ${postsPerPage}`,
    (err, rows) => { 
        if (err) throw err; 

        rows.forEach( (v) => {
            v.color = util.getRandomColorRGB(v.name);
        });

        cb(rows); 
    });
};


// Returns extended info on posts + activityId
exports.getExtendedPosts = (activityName, cb) => {

    db.connection.query(`SELECT post.id, post.name , post.body, post.creation_time, post.commentCount, post.creator, post.creator_name
        FROM (SELECT post.*, count(comment.post) AS commentCount 
            FROM (SELECT post.*,user.name AS creator_name FROM post JOIN user ON post.creator=user.id) AS post 
            LEFT JOIN comment ON post.id= comment.post group by post.id) AS post
        JOIN activity ON activity.id = post.activity
        WHERE activity.name = ? `, activityName,
        (err, rows) => { if (err) throw err; cb(rows) });
};

// do we need async?
exports.createActivity = async (activityName, description, cb) => {

    // console.log(activityName, description);

    // Checking Here
    let uniqueName = false;
    const result =  await db.query(`SELECT * FROM activity WHERE activity.name = ?`, activityName);

    // check if there are any activities with same name
    uniqueName = (result.length == 0);

    // Try to insert data if it passes constraint
    if (uniqueName){
        let temp = await db.query(`INSERT INTO activity(name,description) VALUES(?, ?)`, [activityName, description]);
    }
    else{
        throw Error("Not unique activity name.");
    }
};


exports.createPost = async (postName, postBody, postActivity, postCreator, postCreationTime, cb) => {

    // get id for activity

    const Activity = await db.queryOne(`SELECT activity.id FROM activity where activity.name = ?`, postActivity);


    // dont forget the .id because it is a row data packet
    // console.log("will insert:",postName, postBody, Activity.id,postCreator, postCreationTime);

    // check if it passed constraints

    // WHAT ARE THE CONSTRAINTS FOR POST?
    // IF user is in activity?


    // try to insert data if it passes constraint

    let temp = await db.query(`INSERT INTO post(name, body, activity, creator, creation_time) VALUES(?, ?, ?, ?, ?)`, [postName, postBody, Activity.id, postCreator, postCreationTime]);

};
exports.getPopularActivities = async () => {

    return db.query(`
SELECT activity.id, activity.name, COUNT(activity.id) AS postCount
FROM activity 
JOIN post ON post.activity = activity.id
-- WHERE post.creation_time >= DATE(NOW() - INTERVAL 1 MONTH)
GROUP BY activity.id
ORDER BY postCount DESC
LIMIT 3
    `);
}
