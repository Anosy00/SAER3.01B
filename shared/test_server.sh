#!/bin/bash 
nping 192.168.23.1 --tcp -p 587 | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Serveur S -> DSI port 587 = Accepté"
else
    echo "[TEST] Serveur S -> DSI port 587 = Refusé"
fi

nping 8.8.8.8 --tcp -p 443 | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Internet -> Serveur S port 443  = Accepté"
else
    echo  "[TEST] Internet -> Serveur S port 443  = Refusé"
fi

ping -c 1 192.168.16.1 | grep "1 received" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Ping hors réseau = Accepté"
else
    echo "[TEST] Ping hors réseau = Refusé" 
fi

nping 192.168.23.1 --tcp -p 1234 | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Serveur S -> DSI port 1234 = Accepté"
else
    echo "[TEST] Serveur S -> DSI port 1234 = Refusé"
fi

nping 192.168.23.1 --tcp -p 22 | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Serveur S -> DSI port 22 = Accepté"
else
    echo "[TEST] Serveur S -> DSI port 22 = Refusé"
fi

nping 192.168.16.1 --tcp -p 587 | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Serveur S -> Employé port 587 = Accepté"
else
    echo "[TEST] Serveur S -> Employé port 587 = Refusé"
fi