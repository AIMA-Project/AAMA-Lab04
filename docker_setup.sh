#!/bin/bash

sudo docker build -t lab04 .
sudo docker run --name lab4 -p 8888:8888 lab04
