#!/usr/bin/env python3

import pyperclip

ints = list()

while (stdin := input()) != "end":
    ints.append(stdin)

pyperclip.copy(', '.join(["'{}'".format(i) for i in ints]))
