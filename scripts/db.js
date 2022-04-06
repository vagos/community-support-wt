const mysql = require('mysql')

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'admin',
  password: 'admin',
  database: 'test'
})

connection.connect();

function query(query, callback) {

    connection.query(query, callback);
    // connection.end(); TODO: fix this
}

module.exports = {
    query: query,
    db : connection
}
