#!/usr/bin/env bash

perl -e '$_=join("",<>);s%/\*.*?\*/%%gs;s%//.*$%%gm;print' $1 \
    | sed '/^[[:space:]]*$/d'
