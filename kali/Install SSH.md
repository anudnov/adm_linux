update system
  sudo apt-get update

install SSH
  sudo apt-get install ssh


  sudo systemctl enable ssh
  sudo service ssh start


Allow Root Access
  sudo nano /etc/ssh/sshd_config
  From:
  #PermitRootLogin prohibit-password

  To:
  PermitRootLogin yes
  sudo service ssh restart
