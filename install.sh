
#!/bin/bash
userdel admin2
userdel admin
groupdel admin
groupdel admin2
rm -rf /home/admin
rm -rf /home/admin2

adduser --disabled-password --gecos "" admin
echo admin:admin | chpasswd
usermod admin -g sudo

echo 'Success.'
