#!/bin/bash
docker run -p 80:5000 --name flask-web -d 875707074940.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-19-ecr-repo:latest

sleep 20s
