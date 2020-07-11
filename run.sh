#!/bin/bash

export CLASSPATH=./lib/*:.
echo $CLASSPATH

java -classpath $CLASSPATH GetYahooQuotes $1
