if ping -q -c 1 -W 1 8.8.8.8 > /dev/null 2>&1; then
  # System Information
  OS=$(uname)
  KERNEL=$(uname -r)
  FULLNAMEOS=$(uname -o)
  NETNAME=$(uname -n)
  ARCH=$(arch)
  UPTIME=$(uptime -p)
  HOSTNAME=$(hostname)
  CPU=$(lscpu | grep "Model name" | cut -d':' -f2 | xargs)
  RAM=$(free -h | grep Mem | awk '{print $2}')
  
  # Network Information
  IP=$(curl -s ifconfig.me)
  IPFORWARDED=$(curl -s ifconfig.me/forwarded)
  INTERFACE=$(ip route get 8.8.8.8 | awk '{print $5; exit}')
  LOCAL_IP=$(ip addr show $INTERFACE | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)
  GATEWAY=$(ip route | grep default | awk '{print $3}')
  
  # Users Information
  WHOAMI=$(whoami)
  SESSIONS=$(who | wc -l)
  USERS=$(users | wc -w)
  SHELL=$(echo $SHELL)
  HOME_DIR=$(echo $HOME)
  
  # Disk Information
  DISK_USAGE=$(df -h --total | grep total | awk '{print $3 " / " $2 " (" $5 ")"}')
  
  clear
  echo -e "\033[1;34mSystem Information\033[0m"
  echo "---------------------------------"
  echo -e "OS: \033[1;32m$OS\033[0m"
  echo -e "Full Name: \033[1;32m$FULLNAMEOS\033[0m"
  echo -e "Kernel: \033[1;32m$KERNEL\033[0m"
  echo -e "Hostname: \033[1;32m$HOSTNAME\033[0m"
  echo -e "Architecture: \033[1;32m$ARCH\033[0m"
  echo -e "Uptime: \033[1;32m$UPTIME\033[0m"
  echo -e "CPU: \033[1;32m$CPU\033[0m"
  echo -e "RAM: \033[1;32m$RAM\033[0m"
  echo -e "Disk Usage: \033[1;32m$DISK_USAGE\033[0m"
  
  echo -e "\n\033[1;34mNetwork Information\033[0m"
  echo "---------------------------------"
  echo -e "Public IP: \033[1;32m$IP\033[0m"
  echo -e "Forwarded IP: \033[1;32m$IPFORWARDED\033[0m"
  echo -e "Local IP: \033[1;32m$LOCAL_IP\033[0m"
  echo -e "Interface: \033[1;32m$INTERFACE\033[0m"
  echo -e "Gateway: \033[1;32m$GATEWAY\033[0m"
  
  echo -e "\n\033[1;34mUsers Information\033[0m"
  echo "---------------------------------"
  echo -e "Current User: \033[1;32m$WHOAMI\033[0m"
  echo -e "Active Sessions: \033[1;32m$SESSIONS\033[0m"
  echo -e "Logged Users: \033[1;32m$USERS\033[0m"
  echo -e "Shell: \033[1;32m$SHELL\033[0m"
  echo -e "Home Directory: \033[1;32m$HOME_DIR\033[0m"
  
  echo -e "\n\033[1;34mSystem Load\033[0m"
  echo "---------------------------------"
  echo -e "$(uptime)"
  echo -e "$(top -bn1 | head -5)"
else
  echo -e "\033[1;31mNetwork Unreachable! Cannot start script\033[0m"
  exit 1
fi
