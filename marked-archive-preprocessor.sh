#!/usr/bin/env python3
import fileinput
import re

for line in fileinput.input():
    # stop the tag becoming a header and make it a red link
    line = re.sub(r'(?:^|\s)(#+([^#\s]\w+))', r'<a href="thearchive://match/\2"><font color="red">\1</font></a>', line)
    # make search links search in the archive
    line = re.sub(r'\[\[(.*)\]\]', r'[[<a href="thearchive://match/\1">\1</a>]]', line)
    print(line, end='')
