FROM openjdk:8-jdk-alpine

ADD https://josm.openstreetmap.de/josm-tested.jar josm-tested.jar

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod a+wr /josm-tested.jar && \
    apk update && \
    apk add ttf-dejavu && \
    rm /var/cache/apk/*

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

