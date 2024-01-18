# SAER3.01B

## Description de la Saé

## Les tests mis en places
Nous avons temporairement autorisé les filtrages en icmp pour verifier les connectivitées des composants.  
Toutes les machines ont réussi à ping google en 8.8.8.8 ce qui nous indique que toutes nos routes sont correctes.  
Apres avoir établi nos filtrages, nous avons testé nos filtrages en fonction des spécifications demandées.

### Le serveur S

Le serveur S doit pouvoir récupérer des données sur un site internet via le protocole http et https :  
`wget --spider http://google.fr`  
`wget --spider https://google.fr` 

S doit pouvoir ping un site exterieur.
La commande `ping 172.12.150.1` permet de tester un ping vers le serveur s. Il est possible de le faire depuis la machine hote en ayant modifié préalablement la route par défaut de celle-ci afin de la remplacer par une route par défaut vers l'interface eth4 de R0.

Enfin, S doit pouvoir communiquer en ssh (protocole tcp) vers la zone "employeurs et équipes" et doit pouvoir communiquer en tcp sur le port 1234.

### La DSI

### La zone employée
