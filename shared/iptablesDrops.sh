iptables -A FORWARD -p udp --dport 53 -j ACCEPT
iptables -A FORWARD -p udp --sport 53 -j ACCEPT
iptables -A FORWARD -p tcp --dport 53 -j ACCEPT
iptables -A FORWARD -p tcp --sport 53 -j ACCEPT
iptables -A FORWARD -p tcp -m multiport --sports 443,80 -j ACCEPT
iptables -A FORWARD -p tcp -m multiport --dports 443,80 -j ACCEPT
