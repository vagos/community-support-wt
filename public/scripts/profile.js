userId = document.getElementById("profileLink").innerHTML;
pictureProfile = document.getElementById("profilePictureCanvas");

const username = document.getElementById("userName").innerHTML

drawProfilePicture(pictureProfile, username);

// Charts

async function drawGraphs(id) {
    const data = await fetch(`/user/stats/${id}`)
    const stats = await data.json();

    commentBars = Array(12).fill(0);
    stats.comments.forEach((v) => {
        monthIndex = parseInt(v.month) - 1;
        commentBars[monthIndex] = v.cnt;
    });
    
    postBars = Array(12).fill(0);
    stats.posts.forEach((v) => {
        monthIndex = parseInt(v.month) - 1;
        postBars[monthIndex] = v.cnt;
    });

    drawMonthGraph(commentBars, postBars);

    activityData = {
        labels: [],
        numbers: [],
        colors : [],
    }
    stats.participation.forEach( (v) => {
        activityData.labels.push(v.name);
        activityData.numbers.push(v.points);
        activityData.colors.push(getRandomColorRGB(v.name));
    });
    console.log(activityData);

    drawActivityPieChart(activityData);
}

function drawMonthGraph(commentBarData, postBarData) {

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
        datasets: [
        {
            label: 'Comments/Month',
            backgroundColor: 'rgb(255, 99, 132)',
            borderColor: 'rgb(255, 99, 132)',
            data: commentBarData,
        },
        {
            label: 'Posts/Month',
            backgroundColor: 'rgb(132, 99, 255)',
            borderColor: 'rgb(132, 99, 255)',
            data: postBarData
        }
        ]
    };

    const config = {
        type: 'line',
        data: data,
        options: {}
    };

    const barChart = new Chart(
        document.getElementById('barChart'),
        config
    );
}

function drawActivityPieChart(activityData) {

    const data = {
      labels: activityData.labels,
      datasets: [
        {
          label: 'Dataset 1',
          data: activityData.numbers,
          backgroundColor: activityData.colors
        }
      ]
    };

    const config = {
      type: 'pie',
      data: data,
      options: {
        responsive: true,
        plugins: {
          legend: {
            position: 'top',
          },
          title: {
            display: true,
            text: 'Activity Proportion'
          }
        }
      },
    };

    const pieChart = new Chart(
        document.getElementById('pieChart'),
        config
    );

}

drawGraphs(userId);
