
# Instructions to set up our Node app with our MongoDB database:



1) Firstly, create a Dockerfile with the following parameters. This file copies and installs our dependencies into our container. It also exposes port 3000 and runs app.js:



![App Dockerfile](https://github.com/mehdishamaa/Docker_Microservices/blob/master/images/App_Dockerfile.png)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;




2) Next, create a Dockerfile for your DB file. This file installs the dependencies for MongoDB:





![DB DOckerfile](https://github.com/mehdishamaa/Docker_Microservices/blob/master/images/DB%20Dockerfile.png)



3) Next we need to write our Docker Compose file. The below file essentially links our App and DB microservices together.It also sets our DB_HOST environment variable: 




![Compose File](https://github.com/mehdishamaa/Docker_Microservices/blob/master/images/Docker%20Compose.png)


4) Once we have created these 3 files and placed them in the appropriate folders, we need to cd into our microservices directory and run the following command:

`docker-compose build`

This builds both our App and DB containers.

5) Lastly, we need to execute the following command to run the containers:

`docker-compose up`

6) To check we have got the database working, navigate to the following address in your browser:

`localhost:3000/posts`

Posts should now be showing!
