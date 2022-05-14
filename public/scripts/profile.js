userId = document.getElementById("profileLink").innerHTML;
pictureProfile = document.getElementById("profilePictureCanvas");

const username = document.getElementById("userName").innerHTML

drawProfilePicture(username, pictureProfile);

// Charts

async function drawGraphs(id) {
    const data = await fetch(`/user/stats/${id}`)
    const stats = await data.json();

    commentBars = Array(12).fill(0);

    stats.comments.forEach((v) => {
        monthIndex = parseInt(v.month) - 1;
        commentBars[monthIndex] = v.cnt;
    });

    drawCommentGraph(commentBars);
}

function drawCommentGraph(commentBarData) {

    const labels = [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December',
    ];

    const data = {
        labels: labels,
        datasets: [{
            label: 'Comments/Month',
            backgroundColor: 'rgb(255, 99, 132)',
            borderColor: 'rgb(255, 99, 132)',
            data: commentBarData,
        }]
    };

    const config = {
        type: 'line',
        data: data,
        options: {}
    };

    const commentChart = new Chart(
        document.getElementById('commentChart'),
        config
    );
}

drawGraphs(userId);
