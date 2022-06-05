const db = require('./db');

exports.getAll = async () => {
    
    return db.query('SELECT name, id FROM user');
};

exports.getTopUsers = async () => { // returns the users with the most posts from last year
    return db.query(`
    SELECT user.name, user.id, COUNT(post.id) as postCount FROM user JOIN post ON post.creator = user.id 
    WHERE YEAR(post.creation_time) = YEAR(CURRENT_DATE - INTERVAL 1 YEAR)
    GROUP BY user.id
    ORDER BY postCount DESC
    LIMIT 6
    `);
};
