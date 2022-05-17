// this wont work on the browser (https://stackoverflow.com/questions/19059580/client-on-node-js-uncaught-referenceerror-require-is-not-defined)
// const posting = require("posting-util");
// now be carful because everything needs to be strict. Meaning always must use let or var
import { convertFormDataToJson, postJson, printFormData, } from "./posting-util.js";

// This function returns a list with all activity titles
function getAllPostTitles(){

    const all_posts = document.querySelectorAll(".post-title");

    const all_post_titles = new Array();

    for (let activity of all_posts){
        all_post_titles.push(activity.innerHTML);
    }
    
    return all_post_titles;

}

// takes known PostTitles and the formData. \n If the formData passes the constraint it will return true.
// What constraint does this need to be?
// i think same titles should be allowed
function PostConstraint(all_posts,formData){

    const title = formData.get("name");

    if (all_posts.includes(title)){
        // if post title already exists
        // console.log("it exists");
        return false;
    }
    else if ((all_posts.includes(title))== false){
        // if post title doesn't exist
        // console.log("it doesn't exist");

        return true;

    }
    else{
        console.log("this should happen!");
        return false;
    }
}

// this will take the form data (in json form), and add the creator,post,creation_time
function addData(data){

    let all_data = data;

    // add creator data
    // this is 21 for testing, later use the logged in user to do it
    all_data["creator"]=21;

    // add activity data
    // this is 1 for testing, later use the activityID
    all_data["activity"]=1;

    // add time data
    let date = new Date();
    let day = date.getDate();
    let month = date.getMonth()+1; //this return 0-11
    let year = date.getFullYear();

    let dateString = `${year}-${month}-${day}`;
    // console.log(dateString);
    all_data["creation_time"] = dateString;

    return all_data;
}

// this will try to make an post from an post form
async function makePost(event) {

    // console.log("making post");
    // prevents browser from using default behaviour , so we can use our own
    event.preventDefault();

    // get the form that called this
    const form = event.currentTarget;

    // get all posts
    var all_posts = getAllPostTitles();

    // console.log(all_posts);

    // make new form data based on form 
    const formData = new FormData(form);

    // printFormData(formData);
    try {
        // check if formData passes constraint
        let is_unique = PostConstraint(all_posts, formData);

        // if it passes constraint insert data
        if (is_unique){

            // console.log("inserting data");
            // Gather data
            let data = await convertFormDataToJson(formData);

            console.log("form json",data);
            
            // add the rest of the post info
            data = addData(data);

            console.log("final data json",data);

            // temporary
            return;
            // NOTE MUST MAKE ROUTER FIRST
            let response = await postJson({url:'',jsonData:data});

            // console.log("make activity response",response);
            // if response isnt an ok
            if (response.status!=200){
                // console.log("response wasnt ok, it was",response.status);
                // let user know what happend
                if(response.status==403) alert("Post is already in DB.\nPlease Refresh your page or try another Title.");
            }
        }
        else{
            // alert user this activity isnt unique
            alert("This Post already exists.\nPlease type another title."); 
        }
    }
    catch (error) {
        console.error(error);
    }


}


let postForm = document.querySelector("form.make-post");
postForm.addEventListener("submit",makePost);