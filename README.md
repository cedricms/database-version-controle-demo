# database-version-controle-demo
A basic setup to demo solutions such as DbMaintain, Liquibase, or Flyway

## Technical dependencies
As is, the project runs on Java 8. Depending on the solutions, it may be needed to upgrade the version.

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

**In order to execute the DbMaintain demo, the following script must be run first (sorry, it's a fallback solution) :**

`CREATE SCHEMA dbmaintain_schema;`

### Connecting to the Docker container
`./connectToDockerImage.sh`

### Running the examples
* DbMaintain : `./dbMaintain.sh`;
* Liquibase : `./liquibase.sh`;
* Flyway : `./flyway.sh`.