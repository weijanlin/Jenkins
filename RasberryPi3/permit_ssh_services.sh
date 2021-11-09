sudo sed -i "s/#Port 22/Port 22/g" /etc/ssh/sshd_config
sudo sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
sudo sed -i "s/#PermitRootLogin prohibit-password/#PermitRootLogin yes/g" /etc/ssh/sshd_config
sudo sed -i "s/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g" /etc/ssh/ssh_config
/etc/init.d/ssh restart
ssh-copy-id -i ~/.ssh/id_rsa.pub pi@192.168.11.130
