#!/bin/sh
echo "********************************************************"
echo "STARTING AUTH SERVICE"
echo "********************************************************"

dockerize -wait $DB_SERVER

java -Dspring.profiles.active=$PROFILE \
    -jar /usr/local/app/@project.build.finalName@.jar
