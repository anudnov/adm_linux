```
apt-get install xrdp
apt-get install xfce4
```
Edit file:
```
vim /etc/xrdp/startwm.sh
```
_add to the file: _
echo "xfce4-session" >~/.xsession

        
        #!/bin/sh
        # xrdp X session start script (c) 2015, 2017, 2021 mirabilos
        # published under The MirOS Licence

        # Rely on /etc/pam.d/xrdp-sesman using pam_env to load both
        # /etc/environment and /etc/default/locale to initialise the
        # locale and the user environment properly.

        if test -r /etc/profile; then
                . /etc/profile
        fi

        echo "xfce4-session" >~/.xsession

        test -x /etc/X11/Xsession && exec /etc/X11/Xsession
        exec /bin/sh /etc/X11/Xsession

        
Restart service:
```
service xrdp restart 
sudo systemctl enable --now xrdp
sudo ufw allow from any to any port 3389 proto tcp 
```
Thank you:
https://russianblogs.com/article/5996417403/
