OS=$(uname)
KERNEL=$(uname -r)
FULLNAMEOS=$(uname -o)
NETNAME=$(uname -n)
ARCH=$(arch)
IP=$(curl ifconfig.me)
IPFORWARDED=$(curl ifconfig.me/forwarded)
WHOAMI=$(whoami)
clear
echo "Coded by t.me/Andreyoss"
echo "Group - t.me/hak_team"
echo "Channel - t.me/termuxhub"
echo ""
echo ""
echo ""
echo "System Information"
echo ""
echo "OS - $OS"
echo "Full Name Of OS - $FULLNAMEOS"
echo "Kernel - $KERNEL"
echo "Network Name Machine - $NETNAME"
echo "Architecture - $ARCH"
echo ""
echo "Network Information"
echo ""
echo "IP - $IP"
echo "IP Forwarded - $IPFORWARDED"
echo ""
echo "Users Information"
echo ""
echo "Current User - $WHOAMI"
echo ""
