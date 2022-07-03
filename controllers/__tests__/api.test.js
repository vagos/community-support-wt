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
            expect.arrayContaining(
                expect.objectContaining({
                    postId: expect.any(Number),
                    body: expect.any(String)
                })
            )
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
        expect.data.AllTimePosts.toEqual([]);
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
        expect.data.AllTimePosts.toEqual([]);
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
        expect.data.AllTimePosts.toEqual([]);
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