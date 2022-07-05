# apt project

This is an implementation of a simple forum website.

![The forum home page.](/docs/media/home.png)

## Features

* User Login/Register
* SQL Database
* Posts, Comments
* User Profiles
* REST API

## Project Information

### Technologies Used

* Express
* Node.js 
* SQL (MySQL)
* Handlebars
* Bootstrap 

## Running

### Linux

```
$ make
$ make run
```

## Docker

If you want an easier time setting up the application, you can deploy it using Docker

```bash 
$ docker-compose build
$ docker-compose up
```
## Public API Documentation
The API Docs are available at 'https://site.url/api-docs'
The api can be accessed by making requests at 'https:/site.url/api/{data}'
The available data that can be accessed is:
- /users
- /users/{id}
- /posts
- /posts/{id}
- /activity
- /activity/{id}
How the data is returned can be found at the docs with examples.