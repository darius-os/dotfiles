#!/usr/bin/env bash

curl -sS https://ipvigilante.com/\/"$(curl https://ipinfo.io/ip)" | python3 -m json.tool
