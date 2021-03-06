#!/bin/sh
#/usr/bin/brook relay -f :9999 -t ${DIP}:$DPORT
#/usr/bin/brook server -l :9999 -p ${PASSWORD}
#start socat
nohup /usr/bin/brook server client -s ${SERVER} -p ${PASSWORD} --socks5 0.0.0.0:1080 &
#start http
/usr/bin/brook socks5tohttp -s 127.0.0.1:1080 -l 0.0.0.0:8010