FROM java:8-jre

RUN echo "deb http://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-get update
RUN apt-get install -yq --force-yes sbt
RUN sbt
RUN apt-get clean
