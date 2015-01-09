FROM lancope/java:8

RUN echo "deb http://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-get update -o Dir::Etc::sourcelist="sources.list.d/sbt.list" -o Dir::Etc::sourceparts="-" -o APT::Get::List-Cleanup="0"
RUN apt-get install -yq --force-yes sbt
RUN sbt

RUN apt-get install -yq rsync ssh-client openssl
RUN apt-get clean
