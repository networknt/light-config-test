This is the light-oauth2 started locally and register all of them to the local consul instance started by docker-compose-consul.yml in light-docker. 

Before start this compose, please start the consul compose first so that these light-oauth2 services can register themselves. 

In the compose, we need light-router to proxy all the requests to the multiple backend services and serve the login-view and light-oauth2 console application. 

As we have at least two single page application, we need to setup virtual host on the light-router instance. 


### Preparation

In the consul.yml, we are using the local IP address as the consul URL which is pointing to the localhost. We also need to use signin.lightapi.net for the login-view of the code service. So we need to put the following line into the /etc/hosts file. You need to change the IP address to your desktop IP address if you want to try the same configuration. 

```
192.168.1.144   lightapi.net signin.lightapi.net
```

