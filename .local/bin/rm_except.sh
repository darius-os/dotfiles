#!/bin/bash

read file_type

find . -type f \! -name "*.$file_type" -delete
