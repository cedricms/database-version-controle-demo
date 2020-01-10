# database-version-controle-demo
A basic setup to demo solutions such as DbMaintain, Liquibase, or Flyway

## Quick start
### Building the image
`./buildDockerImage.sh`
### Removing the image
`./removeDockerImage.sh`
### Running the image
`./runDockerImage.sh`

### H2 parameters
The H2 web-client can be found here : `http://localhost:8082/`

The connection parameters are : 
* Driver Class: org.h2.Driver
* JDBC URL: jdbc:h2:my-db-name 
* User Name: (empty)
* Password: (empty)

### Connecting to the Docker container
`./connectToDockerImage.sh`

### Running the examples
* DbMaintain : `/mvnw -f /database-version-controle-demo/pom.xml clean install -P DbMaintain`;
* Liquibase : `/mvnw -f /database-version-controle-demo/pom.xml clean install -P Liquibase`;
* Flyway : .