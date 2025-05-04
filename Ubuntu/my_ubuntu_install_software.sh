#!/bin/bash

# chmod +x install_software.sh
# ./install_software.sh
# sudo apt install -y nano cloud-initramfs-growroot mlocate htop iftop net-tools git wget curl
# echo "1" > /sys/class/block/sda/device/rescan



# Update the package list to make sure you have the latest version information
sudo apt update

# Install the desired software package
sudo apt install -y nano cloud-initramfs-growroot mlocate htop iftop net-tools git wget curl fail2ban
# Disk scan
echo "1" > /sys/class/block/sda/device/rescan

# Display current hostname using hostnamectl
echo "Current hostname:"
hostnamectl

# Ask if the user wants to change the hostname
read -p "Do you want to change the hostname? (y/n): " change_hostname

# Check the user's response
if [ "$change_hostname" = "y" ] || [ "$change_hostname" = "Y" ]; then
    # Prompt user for the new hostname
    read -p "Enter the new hostname: " new_hostname

    # Set the new hostname using hostnamectl
    sudo hostnamectl set-hostname "$new_hostname"

    echo "Hostname changed to $new_hostname"
else
    echo "Hostname unchanged."
fi

# Run timedatectl to display the current time and date settings
echo "Current date and time settings:"
timedatectl

# Ask if the user wants to change the time zone to Israel
read -p "Do you want to change the time zone to Israel? (y/n): " change_timezone

# Check the user's response
if [ "$change_timezone" = "y" ] || [ "$change_timezone" = "Y" ]; then
    # Change the time zone to Israel
    sudo timedatectl set-timezone Asia/Jerusalem

    echo "Time zone changed to Israel."
else
    echo "Time zone unchanged."
fi

# Update and upgrade the system
sudo apt-get update
sudo apt-get upgrade -y

echo "System updated and upgraded."

# Print system information
echo "System Information:"
echo "-------------------"
echo "IP Address: $(hostname -I)"
echo "Timezone: $(timedatectl | grep -E 'Time zone|Timezone' | awk '{print $3}')"
echo "Date: $(date)"
echo "Host name: $(hostname)"
echo "User name: $USER"
echo "Disk Size: $(df -h | awk '$NF=="/"{print $2}')"
echo "Memory Size: $(free -h | awk '/Mem/{print $2}')"
echo "CPU: $(lscpu | grep 'Model name' | awk -F: '{print $2}' | sed 's/^[ \t]*//')"
echo "Ubuntu Version: $(lsb_release -d | awk -F"\t" '{print $2}')"
