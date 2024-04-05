#!/bin/bash
nping 8.8.8.8 --tcp -p 80  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Internet port 80 = Accepté"
else
    echo "[TEST] Internet port 80 = Refusé"
fi

nping 8.8.8.8 --tcp -p 443  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Internet port 443 = Accepté"
else
    echo "[TEST] Internet port 443 = Accepté"
fi

nping 192.168.16.1 --tcp -p 80  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Internet -> Employé port 80  = Accepté"
else
    echo "[TEST] Internet -> Employé port 80  = Refusé"
fi

nping 162.168.16.1 --tcp -p 443  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Internet -> Employé port 443  = Accepté"
else
    echo "[TEST] Internet -> Employé port 443  = Refusé"
fi

nping 192.168.32.1 --tcp -p 80  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Internet -> Compta port 80  = Accepté"
else
    echo "[TEST] Internet -> Compta port 80  = Refusé"
fi

nping 192.168.32.2 --tcp -p 443  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Internet -> Compta port 443  = Accepté"
else
    echo "[TEST] Internet -> Compta port 443  = Accepté"
fi

nping 172.12.150.1 --tcp -p 80  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Internet -> Serveur S port 80  = Accepté"
else
    echo "[TEST] Internet -> Serveur S port 80  = Refusé"
fi

nping 172.12.150.1 --tcp -p 443  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Internet -> Serveur S port 443  = Accepté"
else
    echo "[TEST] Internet -> Serveur S port 443  = Refusé" 
fi

nping 192.168.23.1 --tcp -p 80  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Internet -> DSI port 80  = Accepté"
else
    echo "[TEST] Internet -> DSI port 80  = Refusé"
fi

nping 192.168.23.1 --tcp -p 443  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Internet -> DSI port 443  = Accepté"
else
    echo "[TEST] Internet -> DSI port 443  = Refusé"
fi

nping 172.12.150.1 --tcp -p 1234  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Internet -> Serveur S port 1234 = Accepté"
else
    echo "[TEST] Internet -> Serveur S port 1234 = Refusé"
fi

nping 172.12.150.1 --tcp -p 22  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Internet -> Serveur S port 22 = Accepté"
else
    echo "[TEST] Internet -> Serveur S port 22 = Refusé"   
fi