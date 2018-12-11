#!/usr/bin/env bash

echo
PORT=3333 node ./src/http.js &
pid=$!

sleep 2

wrk 'http://localhost:3333/?foo[bar]=baz' \
  -d 5 \
  -c 50 \
  -t 8 \
  | grep 'requests in' \
  | awk '{ print "  " $1 }'

kill $pid
