#!/bin/bash

time=`date +%y-%m-%d@%H:%M:%S`

git add *
git commit -m "push $time"
git push origin main
