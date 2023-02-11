#!/bin/bash
find sounds -type f -exec ffmpeg -i {} "{}.wav" \; > results.out