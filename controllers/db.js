const mysql = require('mysql');
const util = require('util');
const fs = require('fs');
var readline = require('readline');
const Pool = require('mysql/lib/Pool');

const options = {
    host: process.env.DB_HOST || 'localhost',
    user: process.env.DB_USER || 'admin',
    password: process.env.DB_PASSWORD || 'admin',
    database: process.env.DB_NAME || 'test',
    port: process.env.DB_PORT,
}

// console.log(options);

const connection = mysql.createConnection(options)

const query = util.promisify(connection.query).bind(connection);

async function queryOne(sql, args) {
    rows = await query(sql, args);
    return rows.length ? rows[0] : [];
}

async function fill() {
    var data = fs.readFileSync('./db/schema.sql', 'utf-8');
    data = data.toString();
    data = data.replace('/\n/g', ' ');

    var queries = data.split(';');
    
    for ( let query of queries ) {
        connection.query(query, (err, results) => {
            if (err) { }
        });
    }
}

module.exports = {
    connection: connection,
    fill: fill,
    query: query,
    queryOne: queryOne,
}
