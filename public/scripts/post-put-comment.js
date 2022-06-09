// this wont work on the browser (https://stackoverflow.com/questions/19059580/client-on-node-js-uncaught-referenceerror-require-is-not-defined)
// const posting = require("posting-util");
// now be carful because everything needs to be strict. Meaning always must use let or var
import { convertFormDataToJson, postJson, printFormData, } from "./posting-util.js";


// this will try to make an post from an post form
async function makeComment(event) {

    // console.log("making comment");
    // prevents browser from using default behavior , so we can use our own
    event.preventDefault();

    // get the form that called this
    const form = event.currentTarget;

    // make new form data based on form 
    const formData = new FormData(form);

    printFormData(formData);
    try {
        // check if formData passes constraint
        // should there be a constraint for comments?
        let is_unique = true;

        // if it passes constraint insert data
        if (is_unique){

            // console.log("inserting data");
            // Gather data
            let data = await convertFormDataToJson(formData);
          

            // note the url is "currentPost/createComment"
            const currentUrl = window.location.href;
            // console.log(`currently at: ${currentUrl}`);
            let response = await postJson({url:currentUrl+'/createComment',jsonData:data});

            // console.log("create comment response",response);
            // if response isnt an ok
            if (response.status!=205){
                // console.log("response wasnt ok, it was",response.status);
                // let user know what happend
                if(response.status==403) alert("Comment is already in DB.\nPlease Refresh your page.");
            }
            else{
                document.location.reload();
            }
        }
        else{
            // alert user if comment failed constraint
            alert("This comment failed the constraint!!"); 
        }
    }
    catch (error) {
        console.error(error);
    }


}


let commentForm = document.querySelector("form.make-comment");
commentForm.addEventListener("submit",makeComment);

let replyForms = document.querySelectorAll("form.make-reply");
// console.log("reply forms:",replyForms);
for(let replyForm of replyForms){
    replyForm.addEventListener("submit",makeComment);
}
