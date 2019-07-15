This is the light-oauth2 started locally and register all of them to the local consul instance started by docker-compose-consul.yml in light-docker. 

Before start this compose, please start the consul compose first so that these light-oauth2 services can register themselves. 

In the compose, we need light-router to proxy all the requests to the multiple backend services and serve the login-view and light-oauth2 console application. 

As we have at least two single page application, we need to setup virtual host on the light-router instance. 

