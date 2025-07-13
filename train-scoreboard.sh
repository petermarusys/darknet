#! /bin/bash

action=2

if [ ${action} -eq 1 ] ; then
./build_release/darknet detector train \
                        /home/marusys/ml/scoreboard/scoreboard.data\
                        cfg/yolov4-tiny-soccer.cfg -dont_show -clear -mjpeg_port 8090
fi
   
#./build_release/darknet detector train cfg/coco.data cfg/yolov4.cfg backup/yolov4_220000.weights -dont_show -mjpeg_port 8090
#./build_release/darknet detector map cfg/coco.data cfg/yolov4.cfg backup/yolov4_90000.weights -points 101
#./build_release/darknet detector map cfg/coco.data cfg/yolov4.cfg backup/yolov4_80000.weights
#./build_release/darknet detector map cfg/coco.data cfg/yolov4.cfg backup/yolov4_70000.weights
#./build_release/darknet detector map cfg/coco.data cfg/yolov4.cfg wgh/yolov4.weights -points 101

if [ ${action} -eq 2 ] ; then
   ./build_release/darknet detector -points 0 map \
                           /home/marusys/ml/scoreboard/scoreboard.data \
                           cfg/yolov4-tiny-soccer.cfg \
                           backup-score/yolov4-tiny-soccer_20000.weights \
                           
fi
