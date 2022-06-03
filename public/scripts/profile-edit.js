const buttonEditBio = document.getElementById("button-edit-bio");
const textAreaBio = document.getElementById("text-area-bio");
const textBio = document.getElementById("text-bio");
const profileCard = document.getElementById("profilePictureCanvas");

textBio.innerHTML = marked.parse(textAreaBio.value)

profileCard.addEventListener("click", (e) => {

    textAreaBio.classList.add("invisible");
    textBio.classList.remove("invisible");

    updateBio(textAreaBio.value);
    
});

function updateBio(bio) {

    const data = { bio: bio };

    fetch('/profile/change-bio', { 
        method : 'PATCH',
        body: JSON.stringify(data),
        headers: {
            'Accept': 'application/json, text/plain, */*',
            'Content-Type': 'application/json'
          },
        });

    textBio.innerHTML = marked.parse(bio)
}

textBio.addEventListener("click", (e) => {

    if ( textAreaBio.value != textBio.innerHTML ) { // user edited their bio.
        updateBio(textAreaBio.value); 
    }

    textAreaBio.classList.toggle("invisible");
    textBio.classList.toggle("invisible");
});

