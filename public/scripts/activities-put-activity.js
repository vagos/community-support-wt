// this wont work on the browser (https://stackoverflow.com/questions/19059580/client-on-node-js-uncaught-referenceerror-require-is-not-defined)
// const posting = require("posting-util");
// now be carful because everything needs to be strict. Meaning always must use let or var
import { postFormDataAsJson } from "./posting-util.js";

// This function returns a list with all activity titles
function getAllActivityTitles(){

    const all_activities = document.querySelectorAll(".activity-title");

    const all_activity_titles = new Array();

    for (let activity of all_activities){
        all_activity_titles.push(activity.innerHTML);
    }
    
    return all_activity_titles;

}

// this will print all entries of a given formdata
function printFormData(FormData){

    console.log("Form data entries:");

    for (let entry of FormData.entries()){
        console.log(entry);
    }
}

// takes known activityTitles and the formData, and if the formData passes the constraint it will return true.
function ActivityConstraint(all_activities,formData){

    const title = formData.get("name");

    if (all_activities.includes(title)){
        // if activity already exists
        // console.log("it exists");
        return false;
    }
    else if ((all_activities.includes(title))== false){
        // if activity doesn't exist
        // console.log("it doesn't exist");

        return true;

    }
    else{
        console.log("this should happen!");
        return false;
    }
}

// this will try to make an activity from an activity form
async function makeActivity(event) {

    // prevents browser from using default behaviour , so we can use our own
    event.preventDefault();

    // get the form that called this
    const form = event.currentTarget;

    // get all activities
    var all_activities = getAllActivityTitles();

    // console.log(all_activities);

    // make new form data based on form 
    const formData = new FormData(form);

    // printFormData(formData);
    try {
        // check if formData passes constraint
        let is_unique = ActivityConstraint(all_activities, formData);

        // if it passes constraint insert data
        if (is_unique){

            // console.log("inserting data");
            // insert data, this will return response 
            // NOTE THIS MUST WAIT FOR RESPONSE
            let response = await postFormDataAsJson({url:'/activities/createActivity',formData:formData});

            // console.log("make activity response",response);
            // if response isnt an ok
            if (response.status!=200){
                // console.log("response wasnt ok, it was",response.status);
                // let user know what happend
                if(response.status==403) alert("Activity is already in DB.\nPlease Refresh your page or try another Title.");
            }
        }
        else{
            // alert user this activity isnt unique
            alert("This activity already exists.\nPlease type another title."); 
        }
    }
    catch (error) {
        console.error(error);
    }


}


var all_activities = getAllActivityTitles();

let activityForm = document.querySelector("form.make-activity");
activityForm.addEventListener("submit",makeActivity);