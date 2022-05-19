const db = require('./db');

exports.getAll = async () => {
    
    return db.query('SELECT name, id FROM user');
};

exports.getTopUsers = async () => {

};
