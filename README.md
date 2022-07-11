# apt project

This is an implementation of a simple forum website.

Read the [Documentation](https://github.com/vagos/webdevproject/blob/master/docs/Documentation.pdf) (in Greek).

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
* Swagger
* Docker

## Setting up the database

Go to dev folder and run db.sh

_If you want to create new data run the python script. (But be careful if you are not using mariadb, you need to alter the default value in participation)_

## Running

### Windows

```
$ make
$ make run-win
```

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
