#!/bin/bash

for f in *wav ; do
  echo "Processing $f"
  lame -m j --replaygain-accurate -q 0 -V2 "$f" "${f%.wav}.mp3"
done
