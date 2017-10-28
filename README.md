# light-config-test

Default config files of light*4j frameworks for test environment on light-config-server

This repo contains all the recommended config files for each version of the framework including 
light-4j, light-rest-4j, light-graphql-4j, light-hybrid-4j and light-eventuate-4j. As this is 
aiming to test environment, all secrets and sensitive info are defaulted to something works out 
of the box. The default config files are designed to be easy to get started and you can update 
certain things to change the behavior of each component later on. For example, the security
is turned off by default but you can enable it by update security.yml to enable it. If you need 
details info on how to update these config files, please consult each individual module document. 

Along with a list of test config files, we have provided another repo that contains all the 
production config files with all the sensitive info remove and force users to create their own. 

The light-config-server supports multiple level organizations config file assembly and merging, 
for example, every organization can setup its own light-config-test to overwrite some files from
light-config-test config files from networknt. With configuration in light-config-server, the
final generated config.zip will contains some files from /networknt/light-config-test and some
files from /yourorg/light-config-test as well as your API/service specific config files. During
merging, most files will be replaced but status.yml and service.yml will be merged across all
levels.
