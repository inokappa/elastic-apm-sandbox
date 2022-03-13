#!/bin/bash

while true
do
  curl -s -X POST -H "Content-Type: application/json" -d '{"name": "hoge"}' http://localhost:3000/users -o /dev/null -w '%{http_code}\n'
  curl -s -X GET http://localhost:3000/users -o /dev/null -w '%{http_code}\n'
  sleep 1
done
