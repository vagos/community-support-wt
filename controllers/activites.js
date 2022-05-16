/* 
 * TODO: look into adding the model part of MVP
 *
 */
const db = require('./db');

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

    // console.log("getting extended post info")

    db.connection.query(`SELECT activity.* ,info.userCount, info.postCount 
    FROM activity JOIN (select users.id ,users.userCount, posts.postCount FROM (SELECT activity.id , COUNT(activity.id) AS userCount FROM activity LEFT JOIN participation ON participation.activity = activity.id GROUP BY activity.id) AS users JOIN (SELECT activity.id , COUNT(post.activity) AS postCount FROM activity LEFT JOIN post ON post.activity = activity.id GROUP BY activity.id) AS posts ON users.id = posts.id) AS info 
        ON activity.id = info.id`,
    (err, rows) => { if (err) throw err; cb(rows); });

};

exports.getExtendedPosts = (activityName, cb) => {

    // maybe later return creatorname and say time of posting?
    db.connection.query(`SELECT post.id, post.name , post.body, post.commentCount FROM (SELECT post.*, count(comment.post) AS commentCount FROM post LEFT JOIN comment on post.id = comment.post GROUP BY post.id) as post JOIN activity ON activity.id = 
    post.activity WHERE activity.name = ?`, activityName,
    (err, rows) => { if (err) throw err; cb(rows) });
};

// do we need async?
exports.createActivity = async (activityName, description, cb) => {

    console.log(`INSERT INTO activity(name,description) VALUES(?, ?)`, [activityName, description]);

};