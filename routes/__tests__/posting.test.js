const request = require('supertest');
const index = require('../../index');

const app = index.app;
// const server = index.server;

test('User that isnt logged in cant comment', async () => {

    const res = await request(app)
        .get('/posts/1/createComment');

    // console.log(`res=${res.text}`);

    // we shouldnt get the 205 that says to the browser to refresh
    expect(res.statusCode).not.toEqual(205);
});

test('User that isnt an admin cant make an activity', async () => {

    const res = await request(app)
        .get('/activities/createActivity');

    // console.log(`res=${res.text}`);

    // we shouldnt get the 205 that says to the browser to refresh
    expect(res.statusCode).not.toEqual(205);
});

// afterAll( async () => {
//     await server.close()
// });
