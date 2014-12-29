FROM lancope/java:8

RUN wget -q --no-check-certificate https://dl.bintray.com/sbt/debian/sbt-0.13.7.deb
RUN dpkg -i sbt-0.13.7.deb
RUN rm sbt-0.13.7.deb
RUN sbt

RUN apt-get install -yq rsync
