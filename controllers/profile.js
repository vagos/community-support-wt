const db = require('./db');

exports.getUserObject = async (username, userId) => {
   
    const rows = await db.query(`SELECT * FROM participation JOIN activity
    ON participation.activity = participation.id
    WHERE participation.user = ?`, userId);

    return rows
};

