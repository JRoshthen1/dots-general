#!/bin/bash
# nohup=Run a command immune to hangups, with output to a non-tty (bash --command)
# xclip=Grab the Primary highlighted selection from the screen and pipe it to festival, > send any stdout to the void  /dev/null 2>&1 &
nohup bash -c "xclip -o -selection primary | festival --tts" > /dev/null 2>&1 &
