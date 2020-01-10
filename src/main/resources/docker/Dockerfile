FROM tumcyk/h2-database

# Install prerequisites
RUN apt-get update && apt-get install -y curl

ENV JAVA_TOOL_OPTIONS -Dhttps.protocols=TLSv1.2

RUN curl -LOk https://github.com/cedricms/database-version-controle-demo/archive/master.zip \
    && unzip ./master.zip -d . \
    && rm ./master.zip

RUN cd ./database-version-controle-demo-master
RUN chmod 744 ./mvnw
RUN chmod 744 ./dbMaintain.sh
RUN chmod 744 ./liquibase.sh