// This module contains utilities for posting to server


// this will try to post formData given to url given, it will return the server response
export async function postFormDataAsJson({ url, formData }) {

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
    // console.log("post response",response);
    return response;

}

// this will print all entries of a given formdata
export function printFormData(FormData){

    console.log("Form data entries:");

    for (let entry of FormData.entries()){
        console.log(entry);
    }
}

// this wont work on browser (https://isotropic.co/how-to-fix-referenceerror-require-is-not-defined-in-javascript/)
// module.exports.postFormDataAsJson = postFormDataAsJson;
