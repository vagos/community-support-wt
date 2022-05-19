// get all user comment image and name
const userComments = document.querySelectorAll(".imageAndName");


for (user of userComments){

    pictureProfile = user.querySelector(".prof-image");

    username = user.querySelector(".user-name").innerHTML;

    drawProfilePicture(pictureProfile, username)

}
