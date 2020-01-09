FROM buildo/h2database

COPY ./mvnw /mvnw
ADD ./.mvn /.mvn

ENV JAVA_TOOL_OPTIONS -Dhttps.protocols=TLSv1.2

RUN curl -LOk https://github.com/cedricms/database-version-controle-demo/archive/master.zip \
    && unzip ./master.zip -d . \
    && rm ./master.zip

RUN mv /database-version-controle-demo-master /database-version-controle-demo

RUN /mvnw -f /database-version-controle-demo/pom.xml clean install

#ENV RELEASE_DATE 2017-04-23
#ENV H2DATA /h2-data

#RUN curl http://www.h2database.com/h2-$RELEASE_DATE.zip -o h2.zip \
#    && unzip h2.zip -d . \
#    && rm h2.zip

#RUN ln -s $(ls /h2/bin/*jar) /h2/bin/h2.jar

#RUN mkdir /docker-entrypoint-initdb.d

#VOLUME /h2-data

#EXPOSE 8082 9092

#COPY docker-entrypoint.sh /usr/local/bin/
#ENTRYPOINT ["docker-entrypoint.sh"]

#CMD java -cp /h2/bin/h2.jar org.h2.tools.Server \
#  -web -webAllowOthers -tcp -tcpAllowOthers -baseDir $H2DATA