/* 
 * TODO: look into adding the model part of MVP
 *
 */
const db = require('./db');

exports.getAll = ( cb ) => {
    
    db.connection.query('SELECT name, id FROM activity', (err, rows) => {
        cb(rows);
    });

};

exports.getPosts = (activityName, cb) => {

    db.connection.query(`
    SELECT post.id, post.body FROM post JOIN activity ON 
        activity.id = post.activity WHERE 
        activity.name = '${activityName}'`,
    (err, rows) => { 
        if (err) throw err;
        cb(rows) 
    });
};

/*
exports.getMembers = ( activityName, cb ) => {
    
    db.connection.query(`SELECT COUNT(user) FROM 
        participation WHERE participation.name = ${activityName}`,
        (err, rows) => { cb(rows) });
};
 */
