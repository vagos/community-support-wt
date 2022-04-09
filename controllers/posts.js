const db = require('./db');

exports.getActivityPosts = (activityName, cb) => {

    db.connection.query(`
    SELECT id, name, body FROM posts 
        WHERE post.activity = 
        (
            SELECT activity.id FROM activity WHERE 
            activity.name = ${activityName}
        )`, 
    (err, rows) => { cb(rows) });
};

