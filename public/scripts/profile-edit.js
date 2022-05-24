const buttonEditBio = document.getElementById("button-edit-bio");
const textAreaBio = document.getElementById("text-area-bio");
const textBio = document.getElementById("text-bio");

textBio.innerHTML = marked.parse(textAreaBio.value)

buttonEditBio.addEventListener("click", (e) => {

    if ( textAreaBio.value != textBio.innerHTML ) { // user edited their bio.
    
        const data = { bio: textAreaBio.value };

        fetch('/profile/change-bio', { 
            method : 'PATCH',
            body: JSON.stringify(data),
            headers: {
                'Accept': 'application/json, text/plain, */*',
                'Content-Type': 'application/json'
              },
            });

        textBio.innerHTML = marked.parse(textAreaBio.value)
    }

    textAreaBio.classList.toggle("invisible");
    textBio.classList.toggle("invisible");
});


