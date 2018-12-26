#!/bin/bash

echo "Waiting dex to launch on 5557..."

while ! nc -z localhost 5557; do   
  sleep 0.1 # wait for 1/10 of the second before check again
done

echo "Dex launched"
