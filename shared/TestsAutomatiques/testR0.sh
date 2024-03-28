#!/bin/bash

# Fonction pour tester le ping vers une adresse IP
test_ping_port() {
    nc -zv "$1" "$2" > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Ping réussi vers $1 sur le port $2"
    else
        echo "Ping échoué vers $1 sur le port $2"
    fi
}

# Configuration des composants Kathara
declare -A kathara_nodes=(
    [Google]="8.8.8.8:443"
    [Google]="8.8.8.8:80"
    # Ajoutez d'autres nœuds Kathara si nécessaire
)

# Boucle à travers les nœuds Kathara pour tester le ping
for hostname in "${!kathara_nodes[@]}"; do
    ip_port="${kathara_nodes[$hostname]}"
    ip="${ip_port%:*}"
    port="${ip_port#*:}"
    echo "Test de connectivité vers $hostname ($ip):($port)"
    test_ping_port "$ip" "$port"
    echo
done

