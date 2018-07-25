#!/bin/sh
pid=`ps -ef | grep AWS-CodePipeline-POC | grep -v grep | awk '{print $2}'`
if [[ "$pid" != "" ]]; then
echo "killing $pid"
kill -9 $pid
fi