ipv4=$(curl -s -4 -L https://www.cloudflare.com/cdn-cgi/trace | grep "ip=" | awk -F '=' '{print $2}')
vlan=$(curl -s -4 -L https://www.cloudflare.com/cdn-cgi/trace | grep "ip=" | awk -F '=' '{print $2}' | awk -F '.' '{print $3}')
ipv4_octet_d=$(curl -s -4 -L https://www.cloudflare.com/cdn-cgi/trace | grep "ip=" | awk -F '=' '{print $2}' | awk -F '.' '{print $4}')
echo server ipv4: $ipv4
echo server vlan: $vlan
cat /etc/sysconfig/network-scripts/ifcfg-eth0 | head -n 12 > /etc/sysconfig/network-scripts/ifcfg-eth0.old
echo "IPV6INIT=yes" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
echo "IPV6_AUTOCONF=no" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
echo "IPV6_DEFROUTE=yes" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
echo "IPV6_FAILURE_FATAL=no" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
echo "IPV6_ADDR_GEN_MODE=stable-privacy" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
if [ "$vlan" -eq 16 ]
    then
        echo "IPV6ADDR=2403:6a40:2:1600::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:1600::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 17 ]
    then
        echo "IPV6ADDR=2403:6a40:2:1700::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:1700::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 30 ]
    then
        echo "IPV6ADDR=2403:6a40:2:3000::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:3000::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 31 ]
    then
        echo "IPV6ADDR=2403:6a40:2:3100::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:3100::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 84 ]
    then
        echo "IPV6ADDR=2403:6a40:2:8400::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:8400::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 89 ]
    then
        echo "IPV6ADDR=2403:6a40:2:8900::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:8900::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 90 ]
    then
        echo "IPV6ADDR=2403:6a40:2:9000::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:9000::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 91 ]
    then
        echo "IPV6ADDR=2403:6a40:2:9100::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:9100::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 244 ]
    then
        echo "IPV6ADDR=2403:6a40:2000:100::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2000:100::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 245 ]
    then
        echo "IPV6ADDR=2403:6a40:2:4500::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:4500::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 246 ]
    then
        echo "IPV6ADDR=2403:6a40:2:4600::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:4600::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 247 ]
    then
        echo "IPV6ADDR=2403:6a40:2000:247::$ipv4_octet_d:0000/64" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2000:247::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 142 ]
    then
        echo "IPV6ADDR=2403:6a40:2:4200::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:4200::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 140 ]
    then
        echo "IPV6ADDR=2403:6a40:2:4000::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:4000::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 143 ]
    then
        echo "IPV6ADDR=2403:6a40:2:4100::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:4100::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 141 ]
    then
        echo "IPV6ADDR=2403:6a40:2:4300::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:4300::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 168 ]
    then
        echo "IPV6ADDR=2403:6a40:2:6800::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:6800::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 169 ]
    then
        echo "IPV6ADDR=2403:6a40:2:6900::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:6900::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 4 ]
    then
        echo "IPV6ADDR=2403:6a40:2:7000::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:7000::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 5 ]
    then
        echo "IPV6ADDR=2403:6a40:2:7100::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:7100::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 12 ]
    then
        echo "IPV6ADDR=2403:6a40:2:7200::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:7200::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 13 ]
    then
        echo "IPV6ADDR=2403:6a40:2:7300::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:7300::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 14 ]
    then
        echo "IPV6ADDR=2403:6a40:2:7400::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:7400::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
if [ "$vlan" -eq 15 ]
    then
        echo "IPV6ADDR=2403:6a40:2:7500::$ipv4_octet_d:0000/56" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
        echo "IPV6_DEFAULTGW=2403:6a40:2:7500::1" >> /etc/sysconfig/network-scripts/ifcfg-eth0.old
fi
cat /etc/sysconfig/network-scripts/ifcfg-eth0.old > /etc/sysconfig/network-scripts/ifcfg-eth0
rm -rf /etc/sysconfig/network-scripts/ifcfg-eth0.old
service network restart
curl -s -4 -L https://www.cloudflare.com/cdn-cgi/trace | grep "ip=" | awk -F '=' '{print $2}'
curl -s -6 -L https://www.cloudflare.com/cdn-cgi/trace | grep "ip=" | awk -F '=' '{print $2}'
echo done
