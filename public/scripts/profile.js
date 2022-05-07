
const buttonEditBio = document.getElementById("button-edit-bio");
const textAreaBio = document.getElementById("text-area-bio");
const textBio = document.getElementById("text-bio");

textAreaBio.classList.toggle("visible");

buttonEditBio.addEventListener("click", (e) => {

    if ( textAreaBio.value != textBio.innerHTML ) { // user edited their bio.
    
        data = { bio: textAreaBio.value };

        fetch('/profile/change-bio', { 
            method : 'PATCH',
            body: JSON.stringify(data),
            headers: {
                'Accept': 'application/json, text/plain, */*',
                'Content-Type': 'application/json'
              },
            });

        textBio.innerHTML = textAreaBio.value
    }

    textAreaBio.value = textBio.innerHTML;

    textAreaBio.classList.toggle("visible");
    textBio.classList.toggle("visible");
});


// Charts

const labels = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
  ];

  const data = {
    labels: labels,
    datasets: [{
      label: 'My First dataset',
      backgroundColor: 'rgb(255, 99, 132)',
      borderColor: 'rgb(255, 99, 132)',
      data: [0, 10, 5, 2, 20, 30, 45],
    }]
  };

  const config = {
    type: 'line',
    data: data,
    options: {}
  };  

const myChart = new Chart(
    document.getElementById('myChart'),
    config
  );
