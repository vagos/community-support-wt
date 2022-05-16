const newActivity = document.querySelector(".activity-creator");

const activityForm = newActivity.querySelector("form.make-activity");


function makeActivity(event) {

    // prevents browser from using default behaviour , so we can use our own
    event.preventDefault();

    const form = event.currentTarget;

    try {

        const title = newActivity.querySelector("#activity-title").value ;

        console.log(form);

        console.log("title",title);

        const formData = new FormData(form);


        // form dat appears empty in console https://stackoverflow.com/questions/25040479/formdata-created-from-an-existing-form-seems-empty-when-i-log-it

        console.log("formdata:",formData.values());

        for (data of formData.values()){
            console.log(data);
        }

        // formData.forEach(file => console.log("File: ", file));

        // for (var [key, value] of formData.entries()) {
        //     console.log(key, value);
        // }

    }
    catch (error) {
        console.error(error);
    }


}

activityForm.addEventListener("submit",makeActivity);