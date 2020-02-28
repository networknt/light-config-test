This folder supposed to contain the light-router configuration to proxy all the requests to different light-oauth2 services. This is not the same as the lightapi.net portal router which also serves virtual host and handles the SPA application authentication/authorization with StatelessAuthHandler. 

This instance will not use cloudflare proxy so that we can expose the service with the lgiht-4j default certificate and allow all client to connect to it. 

