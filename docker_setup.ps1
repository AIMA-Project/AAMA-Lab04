#!/bin/bash

docker build -t "lab4-container" .
docker run --name "lab4-container" -p 8888:8888 lab04
