#!/bin/bash
nping 172.12.150.1 -tcp -p 80 | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
	echo "Connection from r0 to S by 80 successed"
else
	echo "Connection from r0 to S by 80 failed"
fi
