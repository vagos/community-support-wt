const mysql = require('mysql');
const util = require('util');
const fs = require('fs');
var readline = require('readline');
const { Pool, Client } = require('pg')

const client = new Client({
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: false
    }
});

client.connect()

// console.log(options);

const query = util.promisify(connection.query).bind(connection);

async function queryOne(sql, args) {
    rows = await query(sql, args);
    return rows.length ? rows[0] : new Array();
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
