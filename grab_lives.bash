#!/bin/bash


# $AME31082017 : remplacement de livestreamer par streamlink

# https://github.com/streamlink/streamlink


RTL=http://www.dailymotion.com/video/xl1km0_regardez-rtl-en-direct-et-en-video_news
franceinter=http://www.dailymotion.com/video/x17qw0a_direct-video-le-7-9-de-patrick-cohen_news
#europe1=http://www.dailymotion.com/video/xqjkfz_europe-1-live_news
europe1=https://www.dailymotion.com/video/xqjkfz
franceinfo=http://www.dailymotion.com/video/x26eox4_le-live-de-france-info_news
franceinfo=http://www.dailymotion.com/video/x26eox4
today=`date +"%Y%m%d%H%M"`

rm /mnt/methode/live/live*.flv
/usr/local/bin/streamlink $europe1 best  -o /mnt/methode/live/live-europe1-$today.flv  &
/usr/local/bin/streamlink $franceinfo best  -o /mnt/methode/live/live-franceinfo-$today.flv &
/usr/local/bin/streamlink $franceinter best  -o /mnt/methode/live/live-franceInter-$today.flv &
/usr/local/bin/streamlink $RTL best  -o /mnt/methode/live/live-RTL-$today.flv
