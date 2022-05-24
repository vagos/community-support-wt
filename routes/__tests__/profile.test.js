const request = require('supertest');
const app = require('../../index');

test('profile stats', async () => {

    const res = await request(app)
        .get('/user/stats/1');
        
    expect(res.statusCode).toEqual(200);
});
