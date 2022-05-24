const db = require('../db');

test('db connection and simple query', async () => {
    const rows = await db.query('SELECT * FROM user'); // query a table that's "guaranteed" to not be empty
    expect(rows.length).toBeGreaterThan(0);
});


test('db queryOne', async () => {
    const rows = await db.queryOne('SELECT * FROM user'); // query a table that's "guaranteed" to not be empty

    expect(rows).toBeDefined();
    expect(rows).not.toBeInstanceOf(Array);
});
