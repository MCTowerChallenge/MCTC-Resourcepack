#!/bin/bash
for f in ./*.ogg; do
  ffmpeg -i "$f" -af volume=10dB -c:v libx265 "${f%.ogg}.louder.ogg"
done
