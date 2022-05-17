// not necessary anymore
const activityForm = document.querySelector("form.make-activity");


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

async function postFormDataAsJson({ url, formData }) {

	const plainFormData = Object.fromEntries(formData.entries());
	const formDataJsonString = JSON.stringify(plainFormData);

    // console.log(plainFormData);
    // console.log(formDataJsonString);

	fetch(url,{
        method : 'PUT',
        body: formDataJsonString,
		headers: {
			"Content-Type": "application/json",
			"Accept": "application/json"
		},
	});

}

function makeActivity(event) {

    // prevents browser from using default behaviour , so we can use our own
    event.preventDefault();

    // get the form that called this
    const form = event.currentTarget;

    // get all activities
    var all_activities = getAllActivityTitles();

    // console.log(all_activities);

    try {

        // console.log(form);

        // make new form data based on form 
        const formData = new FormData(form);

        // printFormData(formData);

        // get activity title entered
        let title = formData.get("name");

        // console.log("title",title);

        if (all_activities.includes(title)){
            // if activity already exists
            console.log("it exists");
            alert("This activity already exists.\nPlease type another title.");
        }
        else if ((all_activities.includes(title))== false){
            // if activity doesn't exist
            console.log("it doesn't exist");

            console.log("inserting data");
            // insert data

            postFormDataAsJson({url:'/activities/createActivity',formData:formData});

        }
        else{
            console.log("this should happen!");
        }

    }
    catch (error) {
        console.error(error);
    }


}

// buttonEditBio.addEventListener("click", (e) => {

//     if ( textAreaBio.value != textBio.innerHTML ) { // user edited their bio.
    
//         const data = { bio: textAreaBio.value };

//         fetch('/profile/change-bio', { 
//             method : 'PATCH',
//             body: JSON.stringify(data),
//             headers: {
//                 'Accept': 'application/json, text/plain, */*',
//                 'Content-Type': 'application/json'
//               },
//             });

//     }
// });


var all_activities = getAllActivityTitles();

// console.log(all_activities);

activityForm.addEventListener("submit",makeActivity);