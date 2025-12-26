#!/bin/bash


aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 875707074940.dkr.ecr.ap-northeast-1.amazonaws.com

if [ `docker images | grep 875707074940.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-19-ecr-repo | wc -l`  = 1 ]
then
        docker rmi 875707074940.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-19-ecr-repo
        docker pull 875707074940.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-19-ecr-repo:latest
else
        docker pull 875707074940.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-19-ecr-repo:latest
fi
