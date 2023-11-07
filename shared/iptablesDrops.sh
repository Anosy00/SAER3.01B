iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -A INPUT -p icmp -j ACCEPT
