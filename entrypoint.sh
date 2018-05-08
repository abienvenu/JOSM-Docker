#!/bin/sh

adduser -D -H -s /bin/sh -u $USERID $USER
su -c "java -jar /josm-tested.jar" $USER

