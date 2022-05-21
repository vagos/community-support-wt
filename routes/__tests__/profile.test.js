const request = require('supertest');
const index = require('../../index');

const app = index.app;
const server = index.server;

test('profile stats', async () => {

    const res = await request(app)
        .get('/user/stats/1');
        
    expect(res.statusCode).toEqual(200);
});

afterAll(() => {
    server.close()
});
