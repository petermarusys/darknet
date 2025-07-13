#! /bin/bash

IMGS="../scoreboard/val/frames/board/seg-00000-frame-001.jpg"

for IMG in ${IMGS} ; do
    echo ${IMG}
    python3 darknet_images.py --weights backup-score/yolov4-tiny-soccer_20000.weights \
            --config_file cfg/yolov4-tiny-soccer.cfg \
            --data_file /home/marusys/ml/scoreboard/scoreboard.data \
            --thresh 0.25  --input ${IMG}
#--dont_show --save_labels    
done
