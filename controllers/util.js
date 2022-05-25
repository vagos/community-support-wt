
// returns the current time in this string format YYYY-MM-DD HH:MM:SS
function timeString() {


    const currentDate = new Date();

    let timeString = currentDate.getFullYear() + "-"
    + (currentDate.getMonth()+1)  + "-"
    + currentDate.getDate() + " " 
    + currentDate.getHours() + ":"  
    + currentDate.getMinutes() + ":" 
    + currentDate.getSeconds();
    

    return timeString;


};
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

function getRandomColorRGB(s) {
    
    seed = numberifyString(s);

    return `rgb(${rnd(seed) % (255)}, ${rnd(seed + 1) % (255)},
        ${rnd(seed + 2) % (255)})`;

}

module.exports = {
    getRandomColorRGB: getRandomColorRGB,
    timeString: timeString
};
