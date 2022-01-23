#### Why ssh “password” prompt takes too long to appear?

```
nano /etc/ssh/sshd_config
```
1. GSSAPIAuthentication yes change to: GSSAPIAuthentication no
2. UseDNS yes change to: UseDNS no
