#vi /opt/scripts/system-info.sh
#!/bin/bash
echo -e "-------------------------------System Information--------------------------------------------------------"
echo -e "Hostname:\t\t"`hostname`
echo -e "uptime:\t\t\t"`uptime | awk '{print $3,$4}' | sed 's/,//'`
echo -e "Manufacturer:\t\t"`cat /sys/class/dmi/id/chassis_vendor`
echo -e "Product Name:\t\t"`cat /sys/class/dmi/id/product_name`
echo -e "Version:\t\t"`cat /sys/class/dmi/id/product_version`
echo -e "Serial Number:\t\t"`cat /sys/class/dmi/id/product_serial`
echo -e "Machine Type:\t\t"`vserver=$(lscpu | grep Hypervisor | wc -l); if [ $vserver -gt 0 ]; then echo "VM"; else echo "Physical"; fi`
echo -e "Operating System:\t"`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`
echo -e "Kernel:\t\t\t"`uname -r`
echo -e "Architecture:\t\t"`arch`
echo -e "Processor Name:\t\t"`awk -F':' '/^model name/ {print $2}' /proc/cpuinfo | uniq | sed -e 's/^[ \t]*//'`
echo -e "Active User:\t\t"`w | cut -d ' ' -f1 | grep -v USER | xargs -n1`
echo -e "System Main IP:\t\t"`hostname -I`
echo ""
echo -e "-------------------------------CPU/Memory Usage--------------------------------------------------------"
echo -e "Memory Usage:\t"`free | awk '/Mem/{printf("%.2f%"), $3/$2*100}'`
echo -e "Swap Usage:\t"`free | awk '/Swap/{printf("%.2f%"), $3/$2*100}'`
echo -e "CPU Usage:\t"`cat /proc/stat | awk '/cpu/{printf("%.2f%\n"), ($2+$4)*100/($2+$4+$5)}' |  awk '{print $0}' | head -1`
echo ""
echo -e "-------------------------------Disk Usage >80%--------------------------------------------------------"
df -h
echo ""

echo -e "-------------------------------For WWN Details--------------------------------------------------------"
vserver=$(lscpu | grep Hypervisor | wc -l)
if [ $vserver -gt 0 ]
then
echo "$(hostname) is a VM"
else
cat /sys/class/fc_host/host?/port_name
fi
echo ""

echo -e "-------------------------------release Details--------------------------------------------------------"
vserver=$(lscpu | grep Hypervisor | wc -l)
if [ $vserver -gt 0 ]
then
echo "$(cat /etc/redhat-release) is a VM"
#echo "$(uname -a) is a VM"
else
cat /sys/class/fc_host/host?/port_name
fi
echo ""
#
echo -e "-------------------------------release Details--------------------------------------------------------"
vserver=$(lscpu | grep Hypervisor | wc -l)
if [ $vserver -gt 0 ]
then
echo "$( ) is a VM"
else
cat /sys/class/fc_host/host?/port_name
fi
echo ""

echo -e "--------------------------- Is anyone else on board?--------------------------------------------------"
vserver=$(lscpu | grep Hypervisor | wc -l)
if [ $vserver -gt 0 ]
then
echo "$(who -Hu)"
else
cat /sys/class/fc_host/host?/port_name
fi
echo ""

echo -e "--------------------------- User groups--------------------------------------------------------------"
vserver=$(lscpu | grep Hypervisor | wc -l)
if [ $vserver -gt 0 ]
then
echo "$(grep sh$ /etc/passwd)"
else
cat /sys/class/fc_host/host?/port_name
fi
echo ""


echo -e "--------------------------- ifconfig -a---------------------------------------------------------------"
vserver=$(lscpu | grep Hypervisor | wc -l)
if [ $vserver -gt 0 ]
then
echo "$(ifconfig -a)"
else
cat /sys/class/fc_host/host?/port_name
fi
echo ""

echo -e "--------------------------- curl ifconfig.me----------------------------------------------------------"
vserver=$(lscpu | grep Hypervisor | wc -l)
if [ $vserver -gt 0 ]
then
echo "$(curl ifconfig.me)"
else
cat /sys/class/fc_host/host?/port_name
fi
echo ""



echo -e "--------------------------- Installed software--------------------------------------------------------"
vserver=$(lscpu | grep Hypervisor | wc -l)
if [ $vserver -gt 0 ]
then
echo "$(rpm -qa)"
else
cat /sys/class/fc_host/host?/port_name
fi
echo ""

echo -e "--------------------------- Installed software--------------------------------------------------------"
vserver=$(lscpu | grep Hypervisor | wc -l)
if [ $vserver -gt 0 ]
then
echo "$(ls -l /etc/yum.repos.d/)"
else
cat /sys/class/fc_host/host?/port_name
fi
echo ""

echo -e "--------------------------- Running processes and services--------------------------------------------"
vserver=$(lscpu | grep Hypervisor | wc -l)
if [ $vserver -gt 0 ]
then
echo "$(ps auxf)"
else
cat /sys/class/fc_host/host?/port_name
fi
echo ""

echo -e "--------------------------- Running processes and services--------------------------------------------"
vserver=$(lscpu | grep Hypervisor | wc -l)
if [ $vserver -gt 0 ]
then
echo "$(systemctl)"
else
cat /sys/class/fc_host/host?/port_name
fi
echo ""

echo -e "--------------------------- Network connections-------------------------------------------------------"
vserver=$(lscpu | grep Hypervisor | wc -l)
if [ $vserver -gt 0 ]
then
echo "$(cat /etc/resolv.conf)"
else
cat /sys/class/fc_host/host?/port_name
fi
echo ""