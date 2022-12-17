#!/bin/bash
for f in ./*.ogg; do
  ffmpeg -i "$f" "${f%.wav}.ogg"
done
