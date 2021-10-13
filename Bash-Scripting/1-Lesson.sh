#!/bin/bash
ls /home | head -n 1 | awk '{ print $1 }'
# ls: lists items in given path
# | : take the output on the left side give it right side.
# awk : a script language usually using for handle strings.
# head : shows the head of given file -n : how many lines
