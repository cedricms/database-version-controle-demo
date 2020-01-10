FROM tumcyk/h2-database

# Install prerequisites
RUN apt-get update && apt-get install -y curl

ENV JAVA_TOOL_OPTIONS -Dhttps.protocols=TLSv1.2
ENV DBMAINTAIN_JDBC_DRIVER /usr/lib/h2/bin/h2-1.4.193.jar

RUN curl -LOk https://github.com/cedricms/database-version-controle-demo/archive/master.zip \
    && unzip ./master.zip -d . \
    && rm ./master.zip

RUN chmod 744 ./database-version-controle-demo-master/mvnw
RUN chmod 744 ./database-version-controle-demo-master/dbMaintain.sh
RUN chmod 744 ./database-version-controle-demo-master/liquibase.sh
RUN chmod 744 ./database-version-controle-demo-master/flyway.sh