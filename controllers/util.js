const moment = require("moment");

// returns the current time in this string format YYYY-MM-DD HH:MM:SS
function timeString() {

    // Will convert to correct format (be careful for HH as hh is 12h and HH is 24h)
    const dateTime = moment().format("YYYY-MM-DD HH:mm:ss");

    return dateTime;


}

// returns this string format YYYY-MM-DD HH:MM:SS from a date obj
function dateToTimeString(date) {


    // Will convert to correct format
    // console.log(`date ${date}`);
    const dateTime = moment(date).format("YYYY-MM-DD HH:mm:ss");
    // console.log(`datetime ${dateTime}`);

    return dateTime;


}

// A list with all the userID OF admins
const ADMINS = [1]

// returns true if userId is an admin
async function checkAdmin(userId) {

    if (ADMINS.includes(userId)) return true;

    return false;
}

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
    
    const seed = numberifyString(s);
    
    var r = rnd(seed)     % 100 + 70; 
    var g = rnd(seed + 1) % 100 + 70;
    var b = rnd(seed + 2) % 100 + 70;

    return `rgb(${r}, ${g}, ${b})`;

}

module.exports = {
    getRandomColorRGB: getRandomColorRGB,
    timeString: timeString,
    dateToTimeString: dateToTimeString,
    checkAdmin: checkAdmin
};
