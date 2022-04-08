/* 
 * TODO: look into adding the model part of MVP
 *
 */
const db = require('./db');

exports.get_all = ( cb ) => {
    
    db.connection.query('SELECT * FROM activity', (err, rows) => {
        cb(rows);
    });

};
