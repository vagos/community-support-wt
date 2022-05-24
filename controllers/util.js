
// returns the current time in this string format YYYY-MM-DD HH:MM:SS
exports.timeString =  function timeString() {


    const currentDate = new Date();

    let timeString = currentDate.getFullYear() + "-"
    + (currentDate.getMonth()+1)  + "-"
    + currentDate.getDate() + " " 
    + currentDate.getHours() + ":"  
    + currentDate.getMinutes() + ":" 
    + currentDate.getSeconds();
    

    return timeString;


}