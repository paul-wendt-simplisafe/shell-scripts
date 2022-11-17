#!/bin/sh

for voice in $(say -v "?" | awk '{print $1}'); do
  echo "Hello! My name is $voice" | say -v $voice -r 225;
  sleep 1;
done;
