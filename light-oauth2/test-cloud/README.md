This is the light-oauth2 started in the test cloud and register all of them to the test consul cluster. 

This compose needs light-router to proxy all the requests to the multiple backend services and serve the login-view and light-oauth2 console application. 

As we have at least two single page application, we need to setup virtual host on the light-router instance. 

This environment is used to help developers to build single page applications that access backend APIs. 

The corresponding light-router instance can be started in ../light-router/test-cloud

This folder is copied from local-consul with all the consulUrl and consul token changed in the consul.yml



