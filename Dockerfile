FROM openjdk:8-stretch

ARG version=1.0.0

ADD ./target/simple-app.jar simple-app.jar
ADD docker-entrypoint.sh .

ENTRYPOINT ["/bin/bash", "docker-entrypoint.sh"]