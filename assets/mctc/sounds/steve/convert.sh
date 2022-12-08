#!/bin/bash
for f in ./*.ogg; do
  ffmpeg -i "$f" -filter_complex '[0:a]channelsplit=channel_layout=stereo:channels=FL[left]' -map '[left]' "${f%.ogg}.mono.ogg"
done
