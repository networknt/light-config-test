This folder contains docker-compose and config to start the light-router for light-portal services for local testing and UI development.

It is used for the UI to use the proxy or for the test build to deploy to the rotuer to do the test locally. When everything is tested, the final UI and router will be deploy to the portal server with light-portal folder in the parent folder. 

For all the portal service we are going to use the docker-compose to start all of them. 

We need to have consul for the registry and discovery so we need to have the consul started as part of the docker-compose.

