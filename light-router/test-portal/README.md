### The final configuration has been moved to the taiji-chain/light-config-test due to security reason.

This folder contains docker-compose and config to start the light-router for light-portal services for test and UI development. The corresponding domains are dev.lightapi.net and devsignin.lightapi.net, and the deployed server is test2. 

This instance is used mainly for the React Portal UI developers who don't want to install any extra service on his/her laptop or desktop. The only server they need is the Nodejs server started by `HTTPS=true yarn start` command from the light-portal/view folder after running `yarn install` on the terminal.

The following domains are supported as virtal hosts.

dev.lightapi.net
devsignin.lightapi.net

The deployed server is test2 
