Run this [Java][] image with:

    $ docker run -it --rm gentoobb/jdk-oracle

Comes with oracle jdk 1.8 and X support.

[Java]: https://www.oracle.com/java/index.html

Dockerfile

FROM experiments/jdk-oracle-x:latest

MAINTAINER dmgo 

ENV uid 2000
ENV gid 2000

RUN mkdir -p /home && adduser -G users,video -D -u $uid dmgo

USER dmgo

Then run
docker build -t xtest .
docker run --rm -v /tmp/idea-IU-143.2287.1/:/ij -v /tmp/WebStorm-143.1559.5:/ws -v /dev/snd:/dev/snd  -v /tmp/.X11-unix:/tmp/.X11-unix  -e uid=2000 -e gid=2000 -e DISPLAY=unix$DISPLAY --name xtest -it xtest /bin/bash 

inside docker run
wmname LG3D
JDK_HOME=/opt/oracle-jdk-bin-1.8.0.72 /ws/bin/webstorm.sh 
