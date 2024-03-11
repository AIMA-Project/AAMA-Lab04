#!/bin/bash

sudo docker build -t lab04 .
sudo docker run -p 8888:8888 lab04
