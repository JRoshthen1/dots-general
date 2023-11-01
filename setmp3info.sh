#!/bin/bash

function set_mp3_info() {
  album="$1"
  title="$2"
  artist="$3"
  year="$4"
  file="$5"

  command="mp3info -l \"$album\" -t \"$title\" -a \"$artist\" -y \"$year\" \"$file\""
  echo "Running command: $command"
  $command
}

if [ $# -ne 5 ]; then
  echo "Usage: set_mp3_info album title artist year file"
  exit 1
fi

set_mp3_info "$1" "$2" "$3" "$4" "$5"
