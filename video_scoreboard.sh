#! /bin/bash

build_release/darknet detector demo \
          /home/marusys/ml/scoreboard/scoreboard.data \
          cfg/yolov4-tiny-soccer.cfg \
          backup-score/yolov4-tiny-soccer_20000.weights \
          "/home/marusys/ml/scoreboard/val/clips/Liverpool vs. Real Madrid - Extended Highlights _ UCL Final _ CBS Sports Golazo [2jrcndaXKJI].webm" \
          -i 0 -thresh 0.25



