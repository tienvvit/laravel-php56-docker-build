#!/bin/bash
export HOME=/home/jenkins
service mysql start
service redis start

while true; do sleep 1d; done