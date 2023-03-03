#! /bin/bash

if [ -z "$1" ]
then
    echo "ERROR: Provide a file name"
    exit 1
fi
 
vinyl_folder=Vinyl
file_name=$HOME/$vinyl_folder/$1
record_mins=25
record_time=$(($record_mins*60))
recording_format="cd"
sound_device="plughw:3,0"

echo "Recording $file_name for $record_mins minutes ($record_time seconds)"
arecord --device=$sound_device \
    --duration=$record_time \
    --format=$recording_format \
    --vumeter=stereo \
    $file_name