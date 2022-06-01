// get all user comment image and name
const userComments = document.querySelectorAll(".imageAndName");

for (user of userComments) {
    var pictureProfile = user.querySelector(".prof-image");
    var targetName = user.querySelector(".user-name").innerHTML;
    drawProfilePicture(pictureProfile, targetName)
}
