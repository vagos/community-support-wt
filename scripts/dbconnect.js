const mysql = require('mysql')

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'admin',
  password: 'admin',
  database: 'testing'
})

connection.connect()

connection.query('select * from test', (err, rows, fields) => {
  if (err) throw err
    rows.forEach((row) => {
        console.log(row.n);
    }
    );
})

module.exports = {
    'connection': connection
}

// connection.end()
