// This module will add the join activity function to any join-activity-button
import { postJson } from "/scripts/posting-util.js";

// button example
// <a href="/activities/{{ActivityName}}/join" class="join-button btn btn-success w-100 m-2">JOIN Activity</a>

// this function will make a user join an activity
async function joinActivity(event) {
    event.preventDefault();

    // get the url from the button that called this
    const url = event.currentTarget.pathname;
    // console.log(url);

    //gather data
    // url path is  /activities/{{ActivityName}}/join , so we slice to get the activityname and replace to remove the %20(the space)
    const data = { activity: url.slice(12,-5).replace("%20"," ") };
    // console.log(data);

    let response = await postJson({url:url, jsonData:data});

    // if response isnt an 205 (Request ok, refresh page)
    if (response.status!=205){
        // console.log("response wasnt ok, it was",response.status);
        // let user know what happend
        //if(response.status==403) alert("PARTICIPATION is already in DB.\nPlease Refresh your page or try another Title.");
    }
    else{
        // Else reload current page
        document.location.reload();
    }

}


// adding functionality to all buttons
const joinBtns = document.querySelectorAll("a.join-activity-btn");
for(let joinBtn of joinBtns){
    // console.log(joinBtn);
    joinBtn.addEventListener('click', joinActivity);
}



