const mysql = require('mysql')

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'admin',
  password: 'admin',
  database: 'test'
})

module.exports = {
    connection : connection
}