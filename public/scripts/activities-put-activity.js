
// This function returns a list with all activity titles
function getAllActivityTitles(){

    const all_activities = document.querySelectorAll(".activity-title");

    const all_activity_titles = new Array();

    for (activity of all_activities){
        all_activity_titles.push(activity.innerHTML);
    }
    
    return all_activity_titles;

}

// this will print all entries of a given formdata
function printFormData(FormData){

    console.log("Form data entries:");

    for (entry of FormData.entries()){
        console.log(entry);
    }
}

// this will try to post formData given to url given, it will return the server response
async function postFormDataAsJson({ url, formData }) {

	const plainFormData = Object.fromEntries(formData.entries());
	const formDataJsonString = JSON.stringify(plainFormData);

    // console.log(plainFormData);
    // console.log(formDataJsonString);

	let response = await fetch(url,{
        method : 'PUT',
        body: formDataJsonString,
		headers: {
			"Content-Type": "application/json",
			"Accept": "application/json"
		},
	});

    // return server response
    console.log("post response",response);
    return response;

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

            // if response isnt an ok
            console.log("make activity response",response);
            if (response.status!=200){
                console.log("response wasnt ok, it was",response.status);
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

activityForm = document.querySelector("form.make-activity");
activityForm.addEventListener("submit",makeActivity);