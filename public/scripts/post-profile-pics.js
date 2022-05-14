// get all user comment image and name
const userComments = document.querySelectorAll(".imageAndName");

// will draw the user picture for the given comment node
function drawProfilePicture(node, username) {
    ctx = node.getContext('2d');

    seed = numberifyString(username);

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


for (user of userComments){

    pictureProfile = user.querySelector(".prof-image");

    username = user.querySelector(".user-name").innerHTML;

    drawProfilePicture(pictureProfile, username)

}