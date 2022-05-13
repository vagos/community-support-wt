
// get all user comment image and name
const userComments = document.querySelectorAll(".imageAndName");

// note: this console will be the client console
// console.log("profile pics to draw:",userComments);


function rnd(n) {
    
    for (let i = 0; i < 10; i++) {
        n = n ^ ( n * 19 );
    }

    return Math.abs(n);
}

function numberifyString(s) {
    let r = 0;

    for (let i = 0; i < s.length; i++) {
       r += s.codePointAt(i); 
    }

    return r;
}

// will draw the user picture for the given comment node
function drawProfilePicture(node, username) {


    ctx = node.getContext('2d');

    // console.log("post username",username);
    seed = numberifyString(username);
    // console.log("post seed",seed);

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


// drawProfilePicture();

for (user of userComments){
    // console.log("now drawing user",user);

    pictureProfile = user.querySelector(".prof-image");

    username = user.querySelector(".user-name").innerHTML;

    drawProfilePicture(pictureProfile, username)

}