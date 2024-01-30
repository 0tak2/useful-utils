#!/bin/sh
docker build --build-arg ADDITIONAL_HOST="192.168.13.66" -t nginx-self-https .
