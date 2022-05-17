// This module contains utilities for posting to server


// this will try to post formData given to url given, it will return the server response
export async function postFormDataAsJson({ url, formData }) {

	let formDataJsonString = await convertFormDataToJson(formData);

	let response = await postJson({url:url, jsonData:formDataJsonString})

    return response;

}

// A simple function that converts form data to json
export async function convertFormDataToJson(formData) {

	const plainFormData = Object.fromEntries(formData.entries());
	const formDataJsonString = JSON.stringify(plainFormData);

    // console.log(plainFormData);
    // console.log(formDataJsonString);

    return formDataJsonString;

}

// A simple function that post a Json to given url
export async function postJson({ url, jsonData }) {

	let response = await fetch(url,{
        method : 'PUT',
        body: jsonData,
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
