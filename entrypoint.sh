#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
rclone version
mkdir /.config
mkdir /.config/rclone/
wget "$CONFIG_IN_URL" -O /.rclone.conf
rclone listremotes
rclone rcd --rc-web-gui --rc-addr=0.0.0.0:$PORT --rc-pass="$web_password" --rc-user="$web_username"
#rclone serve http $CLOUDNAME: --addr :$PORT --vfs-read-chunk-size 128M
 
