#!/bin/bash

thought=$(curl -s --connect-timeout 10 -A '/u/samroxsox91' \
  'https://www.reddit.com/r/showerthoughts/top.json?sort=top&t=week&limit=100' \
  | python -c \
    'import sys, random, json;\
    randnum = random.randint(0,99);\
    response = json.load(sys.stdin)["data"]["children"][randnum]["data"];\
    print "\n\"" + response["title"] + "\""')

echo $thought | cowsay
