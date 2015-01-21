FROM java:8-jre

RUN echo "deb http://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-get update
RUN apt-get install -yq --force-yes sbt=0.13.5
WORKDIR /tmp
RUN sbt -sbt-create
RUN apt-get clean
