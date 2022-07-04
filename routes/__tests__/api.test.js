const request = require('supertest');
const index = require('../../index');

const app = index.app;
const server = index.server;

test('return users', async () => {

    const res = await request(app)
        .get('/api/users');

    expect(res.statusCode).toEqual(200);
});


test('return a specific user', async () => {

    const res = await request(app)
        .get('/api/users/2');

    expect(res.statusCode).toEqual(200);
});

test('return all the posts', async () => {

    const res = await request(app)
        .get('/api/posts');

    expect(res.statusCode).toEqual(200);
})

test('return a specific post', async () => {

    const res = await request(app)
        .get('/api/posts/1');

    expect(res.statusCode).toEqual(200);
})

test('return all activities', async () => {

    const res = await request(app)
        .get('/api/activity');

    expect(res.statusCode).toEqual(200);
})

test('return a specific activity', async () => {

    const res = await request(app)
        .get('/api/activity/1');

    expect(res.statusCode).toEqual(200);
})
