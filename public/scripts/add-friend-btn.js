import { postJson } from "/scripts/posting-util.js";

// button example
// <a class ="btn btn-success" href="/{{user.id}}/addFriend">Add user as friend</a>

// this function will make a user add another as a friend
async function makeFriend(event) {
    event.preventDefault();

    // get the url from the button that called this
    const url = event.currentTarget.pathname;
    console.log(url);

    //gather data
    // url path is  /{{user.id}}/addFriend , so we slice to get the user.id
    const data = { activity: url.slice(0,-10) };
    console.log(data);

    let response = await postJson({url:url, jsonData:data});

    // if response isnt an 205 (Request ok, refresh page)
    if (response.status!=205){
        // console.log("response wasnt ok, it was",response.status);
        // let user know what happend
        //if(response.status==403) alert("friendship is already in DB.\nPlease Refresh your page or try another Title.");
    }
    else{
        // Else reload current page
        document.location.reload();
    }

}


// adding functionality to all buttons
const addFriendBtns = document.querySelectorAll("a.make-friend-btn");
for(let addFriendBtn of addFriendBtns){
    // console.log(addFriendBtn);
    addFriendBtn.addEventListener('click', makeFriend);
}