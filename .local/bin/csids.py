#!/usr/bin/env python3

import pyperclip

ints = set()

while (stdin := input()) != "end":
    ints.add(stdin)

pyperclip.copy(', '.join(["{}".format(i) for i in ints]))