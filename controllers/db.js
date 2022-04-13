const mysql = require('mysql')

const options = {
  host     : process.env.DB_HOST || 'localhost',
  user     : process.env.DB_USER || 'admin',
  password : process.env.DB_PASSWORD || 'admin',
  database : process.env.DB_NAME || 'test',
  port     : process.env.DB_PORT,
}

console.log(options);

const connection = mysql.createConnection(options)

module.exports = {
    connection : connection
}
