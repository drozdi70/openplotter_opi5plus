#!/bin/bash
cd /home/orangepi/work
CONFIG=""
while read -r line; do CONFIG="${CONFIG} $line"; done < aiscatcher.conf
/usr/local/bin/AIS-catcher ${CONFIG}
