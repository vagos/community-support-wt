// This module contains utilities for posting to server


// this will try to post formData given to url given, it will return the server response
export async function postFormDataAsJson({ url, formData }) {

	let formDataJson = await convertFormDataToJson(formData);

	let response = await postJson({url:url, jsonData:formDataJson})

    return response;

}

// A simple function that converts form data to json string  (NOT NEEDED ANYMORE)
export async function convertFormDataToJsonString(formData) {

	const plainFormData = Object.fromEntries(formData.entries());
	const formDataJsonString = JSON.stringify(plainFormData);

    // console.log(plainFormData);
    // console.log(formDataJsonString);

    return formDataJsonString;

}

// A simple function that converts FormData to json object
export async function convertFormDataToJson(formData) {

	const jsonFormData = Object.fromEntries(formData.entries());

    return jsonFormData;

}

// A simple function that converts a json to a string (for posting)
export async function convertJsonToString(json) {

	const jsonString = JSON.stringify(json);

    return jsonString;

}


// A simple function that post a Json to given url
export async function postJson({ url, jsonData }) {

    // must convert json to string
    let jsonStringData = await convertJsonToString(jsonData);

	let response = await fetch(url,{
        method : 'PUT',
        body: jsonStringData,
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
