
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

