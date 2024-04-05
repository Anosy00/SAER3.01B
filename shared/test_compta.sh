#!/bin/bash
nping 172.12.150.1 --tcp -p 1234  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Employé -> Serveur S port 1234 = Accepté"
else
    echo "[TEST] Employé -> Serveur S port 1234 = Refusé"
    
fi

nping 172.12.150.1 --tcp -p 22  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Employé -> Serveur S port 22 = Accepté"
else
    echo "[TEST] Employé -> Serveur S port 22 = Refusé"
    
fi

nping 192.168.23.1 --tcp -p 587  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Employé -> DSI port 587 = Accepté"
else
    echo "[TEST] Employé -> DSI port 587 = Refusé"
    
fi

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
    echo "[TEST] Internet port 443 = Refusé"
    
fi

ping -c 1 192.168.32.1  | grep "1 received" > /dev/null 2>&1
if [ $? -eq 0 ]; then
   echo "[TEST] Ping propre réseau = Accepté"
else
    echo "[TEST] Ping propre réseau = Refusé"
fi

ping -c 1 192.168.32.2  | grep "1 received" > /dev/null 2>&1
if [ $? -eq 0 ]; then
   echo "[TEST] Ping propre réseau = Accepté"
else
    echo "[TEST] Ping propre réseau = Refusé"
fi

ping -c 1 192.168.16.1  | grep "1 received" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Ping hors réseau = Accepté"
else
    echo "[TEST] Ping hors réseau = Refusé" 
fi

nping 192.168.16.1 --tcp -p 1234  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Compta -> Employé port 1234 = Accepté"
else
    echo "[TEST] Compta -> Employé port 1234 = Refusé" 
fi

nping 192.168.16.2 --tcp -p 22  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[TEST] Compta -> Employé port 80 = Accepté"
else
    echo "[TEST] Compta -> Employé port 80 = Refusé" 
fi

nping 172.12.150.1 --tcp -p 587  | grep "RCVD" > /dev/null 2>&1
if [ $? -eq 0 ]; then
     echo "[TEST] Compta -> Serveur S 587 = Accepté"
else
    echo "[TEST] Compta -> Serveur S 587 = Refusé"
fi
