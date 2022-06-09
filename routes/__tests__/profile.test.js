const request = require('supertest');
const index = require('../../index');

const app = index.app;
const server = index.server;

test('profile stats 200 status code', async () => {

    const res = await request(app)
        .get('/user/stats/1');
        
    expect(res.statusCode).toEqual(200);
});

test('profile stats infos', async () => {

    const res = await request(app)
        .get('/user/stats/1');

    const resJSON = JSON.parse(res.text);
        
    expect(resJSON.comments).toBeDefined();
    expect(resJSON.participation).toBeDefined();
    expect(resJSON.posts).toBeDefined();
});

afterAll( async () => {
    await server.close()
});
