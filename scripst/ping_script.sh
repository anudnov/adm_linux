#!/bin/bash

function check_srv() {
ping $1 && echo "$1 is <font color=green>online</font>" || echo "$1 is <font color=red>offline</font><br>" >>status.html
}
echo "Status<br>">status.html
# check_srv walla.co.il
check_srv github.com
