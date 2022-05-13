userId = document.getElementById("profileLink").innerHTML;
pictureProfile = document.getElementById("profilePictureCanvas");


function numberifyString(s) {
    let r = 0;

    for (let i = 0; i < s.length; i++) {
       r += s.codePointAt(i); 
    }

    return r;
}

function rnd(n) {
    
    for (let i = 0; i < 10; i++) {
        n = n ^ ( n * 19 );
    }

    return Math.abs(n);
}

function drawProfilePicture() {
    ctx = pictureProfile.getContext('2d');

    // console.log("profile username:",document.getElementById("userName").innerHTML);
    seed = numberifyString(document.getElementById("userName").innerHTML);
    // console.log("profile seed:",seed);

    N = Math.min( ( rnd(seed) % 10 ) +  (rnd(seed + 1) % 10) + 1, 10) ;

    for (let i = 0; i < N; i++) {
        ctx.fillStyle = `rgb(${rnd(seed) % 255}, ${rnd(seed + 1) % 255}, ${rnd(seed + 2) % 255})`;
        ctx.fillRect(rnd(seed + 1) % 100 + 50,
            rnd(seed + 4) % 100 + 10, 
            rnd(seed + 2) % 100 + 50, 
            rnd(seed + 2) % 100 + 50) 

        seed += 1;
    }
}

drawProfilePicture();

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

