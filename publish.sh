#!/usr/bin/env sh
#! /bin/bash 
basepath=$(cd `dirname $0`; pwd)
cd $basepath
git add .
git commit -am "update"
git push
ssh root@www.tyrion.wang "cd /tyrion/OmniPlan && git pull"
exit