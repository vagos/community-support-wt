const api = require('../api');



test('get all users from the database', async () => {
    const data = await api.getAllUsers();
    expect(data).toBeDefined();
    expect(data).toEqual(
        expect.arrayContaining([
            expect.objectContaining({
                id: expect.any(Number),
                name: expect.any(String)
            })
        ])
    )
});

test('get data for user with id 2', async () => {
    const data = await api.getUserStats(2);
    expect(data).toBeDefined();
    if (data.AllTimeComments.length > 0) {
        expect(data.AllTimeComments).toEqual(
            expect.arrayContaining([
                expect.objectContaining({
                    postId: expect.any(Number),
                    body: expect.any(String)
                })
            ])
        );
    }
    else {
        expect(data.AllTimeComments).toEqual([]);
    }
    if (data.AllTimePosts.length > 0) {
        expect(data.AllTimePosts).toEqual(
            expect.arrayContaining([
                expect.objectContaining({
                    postId: expect.any(Number),
                    name: expect.any(String),
                    creation_time: expect.any(Date)
                })
            ])
        )
    }
    else {
        expect(data.AllTimePosts).toEqual([]);
    }
    if (data.AllTimeParticipation.length > 0) {
        expect(data.AllTimeParticipation).toEqual(
            expect.arrayContaining([
                expect.objectContaining({
                    points: expect.any(Number),
                    name: expect.any(String),
                })
            ])
        )
    }
    else {
        expect(data.AllTimePosts).toEqual([]);
    }
    if (data.JoinedActivities.length > 0) {
        expect(data.JoinedActivities).toEqual(
            expect.arrayContaining([
                expect.objectContaining({
                    id: expect.any(Number),
                    name: expect.any(String),
                    join_date: expect.any(Date)
                })
            ])
        )
    }
    else {
        expect(data.JoinedActivities).toEqual([]);
    }
    expect(data.PastMonthComments).toEqual(expect.any(Number));
    expect(data.PastMonthPosts).toEqual(expect.any(Number));

    expect(data).toEqual(
        expect.objectContaining({
            AllTimeComments: expect.any(Array),
            AllTimePosts: expect.any(Array),
            AllTimeParticipation: expect.any(Array),
            JoinedActivities: expect.any(Array),
            PastMonthComments: expect.any(Number),
            PastMonthPosts: expect.any(Number),
        })
    )
})

test('data for a user that doesnt exist', async () => {
    const data = await api.getUserStats(-1);
    expect(data).toEqual({})
})

test('get all posts from the database', async () => {
    const data = await api.getAllPosts();
    expect(data).toBeDefined();
    expect(data).toEqual(
        expect.arrayContaining([
            expect.objectContaining({
                id: expect.any(Number),
                name: expect.any(String)
            })
        ])
    )
});

test('get data for a post with id 1', async () => {
    const data = await api.getPostStats(1);
    expect(data).toBeDefined();
    if (data.comments.length > 0) {
        expect(data.comments).toEqual(
            expect.arrayContaining([
                expect.objectContaining({
                    body: expect.any(String),
                    creation_time: expect.any(Date),
                    creator: expect.any(Number)
                })
            ])
        );
    }
    else {
        expect(data.comments).toEqual([]);
    }
    expect(data.creator).toEqual(
        expect.objectContaining({
            name: expect.any(String),
            id: expect.any(Number)
        })
    )
    expect(data).toEqual(
        expect.objectContaining({
            comments: expect.any(Array),
            creator: expect.any(Object)
        })
    )
});


test('data for a post that doesnt exist', async () => {
    const data = await api.getPostStats(-1);
    expect(data).toEqual({})
})

test('get all activities from the database', async () => {
    const data = await api.getAllActivities();
    expect(data).toBeDefined();
    expect(data).toEqual(
        expect.arrayContaining([
            expect.objectContaining({
                id: expect.any(Number),
                name: expect.any(String)
            })
        ])
    )
});

test('get data for an activity with id 1', async () => {
    const data = await api.getActivityStats(1);
    expect(data).toBeDefined();
    expect(data.activityName).toEqual(expect.any(String))
    expect(data.numberOfPosts).toEqual(expect.any(Number))
    if (data.postsIds.length > 0) {
        expect(data.postsIds).toEqual(
            expect.arrayContaining([
                expect.any(Number)
            ])
        );
    }
    else {
        expect(data.postsIds).toEqual([]);
    }
    if (data.numberOfPosts >= 1) {

        expect(data.mostRecentPost).toEqual(
            expect.objectContaining({
                body: expect.any(String),
                id: expect.any(Number),
                creation_time: expect.any(Date)
            })
        )
    }
    else {
        expect(data.mostRecentPost).toEqual({})
    }
    expect(data).toEqual(
        expect.objectContaining({
            activityName: expect.any(String),
            numberOfPosts: expect.any(Number),
            postsIds: expect.any(Array),
            mostRecentPost: expect.any(Object)
        })
    )
});

test('data for an activity that doesnt exist', async () => {
    const data = await api.getActivityStats(-1);
    expect(data).toEqual({})
})
