// this wont work on the browser (https://stackoverflow.com/questions/19059580/client-on-node-js-uncaught-referenceerror-require-is-not-defined)
// const posting = require("posting-util");
// now be carful because everything needs to be strict. Meaning always must use let or var
import { postFormDataAsJson, printFormData } from "./posting-util.js";

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

    printFormData(formData);
    try {
        // check if formData passes constraint
        let is_unique = PostConstraint(all_posts, formData);

        // if it passes constraint insert data
        if (is_unique){

            // console.log("inserting data");
            // insert data, this will return response 
            // NOTE THIS MUST WAIT FOR RESPONSE
            // NOTE MUST MAKE ROUTER FIRST
            let response = await postFormDataAsJson({url:'',formData:formData});

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