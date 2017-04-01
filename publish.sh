#!/usr/bin/env sh
#! /bin/bash 
basepath=$(cd `dirname $0`; pwd)
cd $basepath
git add .
git commit -am "update"
git push
ssh root@101.200.166.134 "cd /tyrion/OmniPlan && git pull"
exit