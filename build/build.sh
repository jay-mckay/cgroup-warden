#!/bin/bash
docker build -t rocky9 . --platform="linux/amd64"
docker create --name build rocky9
docker cp build:/app/cgroup-warden ./
docker rm build
docker image rm rocky9
