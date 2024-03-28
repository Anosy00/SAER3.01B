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
    [Google]="8.8.8.8,80,443"
    [R1]="192.168.31.254,80,443,22"
    [R2]="192.16.47.254,80,443,22"
    [R3]="192.168.23.62,80,443,22"
    [R4]="172.12.150.2,80,443,22"
)

# Extraction des noms d'hôte dans un tableau
hosts=("${!kathara_nodes[@]}")

# Boucle à travers les noms d'hôte dans l'ordre inverse
for ((i=${#hosts[@]}-1; i>=0; i--)); do
    echo
    hostname="${hosts[i]}"
    ip_ports="${kathara_nodes[$hostname]}"
    IFS=',' read -r -a ip_ports_array <<< "$ip_ports"
    ip="${ip_ports_array[0]}"
    ports_to_test=("${ip_ports_array[@]:1}")

    # Création de la chaîne contenant tous les ports à tester
    ports_string=$(IFS=','; echo "${ports_to_test[*]}")

    # Affichage du message avec tous les ports à tester
    echo "Test de connectivité vers $hostname ($ip) sur les ports : $ports_string"

    # Boucle à travers les ports à tester
    for port in "${ports_to_test[@]}"; do
        test_ping_port "$ip" "$port"
    done
done
echo
