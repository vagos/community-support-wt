
const postTimes = document.querySelectorAll(".post-time");
// console.log(postTimes);

// get current time in ms
const currentTime = new Date().getTime();
// console.log(currentTime);

// values in ms
const oneSecond = 1000;
const oneMinute = oneSecond * 60;
const oneHour = oneMinute * 60;
const oneDay = oneHour * 24;
const oneYear = oneDay * 365;


for (let postDateTime of postTimes){

  // get post time in ms
  let postTime = new Date(postDateTime.innerHTML);

  let timeDiff = currentTime - postTime;
  // console.log("time diff=", timeDiff);

  // if timeDiff <0 (meaning post is in the future, or client time is old for some reason)
  if (timeDiff<0) {console.log("Time difference is negative. Maybe Client time is behind?"); continue;}

  // if post was posted less than an minute ago
  if (timeDiff<oneMinute){
    // display how many seconds ago
    postDateTime.innerHTML = Math.round(timeDiff/oneSecond) + " Seconds"; 
    continue;
  }

  // if post was posted less than an hour ago
  if (timeDiff<oneHour){
    // display how many minutes ago
    postDateTime.innerHTML = Math.round(timeDiff/oneMinute) + " Minutes"; 
    continue;
  }

  // if post was posted less than an day ago
  if (timeDiff<oneDay){
    // display how many hours ago
    postDateTime.innerHTML = Math.round(timeDiff/oneHour)+ " Hours"; 
    continue;
  }

  // if post was posted less than an year ago
  if (timeDiff<oneYear){
    // display how many days ago
    postDateTime.innerHTML = Math.round(timeDiff/oneDay) + " Days"; 
    continue;
  }

  // if post was posted more than an Year ago
    
  // display how many years ago
  postDateTime.innerHTML = Math.round(timeDiff/oneYear)+ " Years";

}