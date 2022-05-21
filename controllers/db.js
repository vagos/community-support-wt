const mysql = require('mysql');
const util = require('util');

const options = {
  host     : process.env.DB_HOST || 'localhost',
  user     : process.env.DB_USER || 'admin',
  password : process.env.DB_PASSWORD || 'admin',
  database : process.env.DB_NAME || 'test',
  port     : process.env.DB_PORT,
}

// console.log(options);

const connection = mysql.createConnection(options)

const query = util.promisify(connection.query).bind(connection);

async function queryOne(sql, args) {
    rows = await query(sql, args);
    return rows[0];
}

module.exports = {
    connection : connection,
    query: query,
    queryOne: queryOne
}
