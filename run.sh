#!/bin/bash
# https://jenkins.io/doc/book/installing/#downloading-and-running-jenkins-in-docker
docker run \
  --group-add docker \
  --rm \
  -d \
  -p 8080:8080 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkinsci/blueocean
