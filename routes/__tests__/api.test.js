const request = require('supertest');
const app = require('../../index');


test('return user', async () => {

    const res = await request(app)
        .get('/api/users');

    expect(res.statusCode).toEqual(200);
});
