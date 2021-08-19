#!/bin/bash
kill -9 $(lsof -t -i:8081 -sTCP:LISTEN)
echo 'application stoped'

mvn clean package -Dmaven.test.skip=true -U
echo "starting application.."
nohup java -jar ./target/springMybatis-0.0.1-SNAPSHOT.jar > my.out &