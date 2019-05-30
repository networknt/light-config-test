This is the light-codegen web configuration which is served by codegen.lightapi.net domain for the UI and backend services. 

The front end SPA application is build with React and deployed to the light-router instance and there are multiple backend services with different version of light-codegen. At this moment, we support the previous released version and the current snapshot version. We might start support 2.x version of the light-codegen soon. 

There are three folders in light-config-test/light-codegen

### release

This folder contains the current release version of the backend service. 



### snapshot

This folder contains the current snapshot version fo the backend service.

### router

This folder contains the UI/view for the React SPA application that calls the above services.


### test local

We need to first start the consul server in docker-compose locally. 

```
cd ~/networknt/light-docker
docker-compose -f docker-compose-consul.yml up -d
```

### Register Handlers

As codegen-web is built on top of light-hybrid-4j, we have two options to expose the services.

* Expose all services with the hybrid server serviceId

In this way, we locate services by the hosting server serviceId. It requires that all hosting servers have the same set of hybrid services to be deployed. This is the same way that we can locate REST and GraphQL service endpoints. 


* Expose individual handlers as serviceId

In the rpc-router.yml, set registerService to true and all individual handlers are registered to the Consul. Then clients can use the individual serviceId to lookup the service. This gives us most flexibilty but it makes the invocation a little bit complicated. The benefit for this approach is that you can drop services to any instances of the hybrid server and all servers are not equal.

For the light-codegen, the UI will call the light-router to invoke the services. It is very hard for the UI to invoke all handlers individually. In the end, we are using the first approach. 

This folder is used to demo how to register individual handlers of light-hybrid-4j only. We are not using it for production. 

