#!/bin/bash
nping 172.12.150.1 -tcp -p 1234 | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
	echo "Connection success"
else
	echo "Connection failed"
fi
