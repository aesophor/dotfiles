#!/bin/bash
# https://stackoverflow.com/questions/929368/how-to-test-an-internet-connection-with-bash

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi
