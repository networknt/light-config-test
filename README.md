Default config files of light frameworks for the test environment

[Stack Overflow](https://stackoverflow.com/questions/tagged/light-4j) |
[Google Group](https://groups.google.com/forum/#!forum/light-4j) |
[Gitter Chat](https://gitter.im/networknt/light-4j) |
[Subreddit](https://www.reddit.com/r/lightapi/) |
[Youtube Channel](https://www.youtube.com/channel/UCHCRMWJVXw8iB7zKxF55Byw) |
[Documentation](https://doc.networknt.com) |
[Contribution Guide](https://doc.networknt.com/contribute/) |

This repo contains all the recommended config files for each version of the framework including light-4j, light-rest-4j, light-graphql-4j, light-hybrid-4j and light-eventuate-4j. As this is aiming to test environment, all secrets and sensitive info have defaulted to something works out of the box. The default config files are designed to be easy to get started, and you can update certain things to change the behavior of each component later on. For example, the security is turned off by default, but you can enable it by updating, for example, the `openapi-security.yml` to enable it. If you need details info on how to update these config files, please consult each module document. 

Along with a list of test config files, we have provided another repo that contains all the production config files with all the sensitive info remove and force users to create their own. 

The light-config-server supports multiple levels of organizations config file assembly and merging; for example, every organization can set up its light-config-test to overwrite some files from light-config-test config files from networknt. With the configuration in light-config-server, the final generated config.zip will contain some files from /networknt/light-config-test and some files from /yourorg/light-config-test as well as your API/service specific config files. During merging, most files will be replaced but status.yml and service.yml will be merged across all levels.
