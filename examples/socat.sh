#!/bin/bash

# Expose port 8080 and route to thenets.org:80
socat -s -v TCP4-LISTEN:8080,fork,reuseaddr TCP4:thenets.org:80
