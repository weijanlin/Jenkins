sudo sed -i "s/#Port 22/Port 22/g" /etc/ssh/sshd_config
sudo sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
sudo sed -i "s/#PermitRootLogin prohibit-password/#PermitRootLogin yes/g" /etc/ssh/sshd_config
sudo sed -i "s/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g" /etc/ssh/ssh_config
/etc/init.d/ssh restart
mkdir ~/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCwWjvFO0yspdS2yTxKlN+y983Tquo9ZCsQ6FBvyeYkepxilIwE1Wo0VpkeiLxaQkR9V81xXledB/qhrpN0PE5hkyP68/8yZuAPfojSbHlqIn4qwGcTVFcWXv6Rg+VFt/TpqXYgokQEGaPGBspZJTiTEJAwPyQJq2EiDdbzsnFtgQT0pBumKTmJvVllrz70CTl93hkIsYxstjbaaORAce3IUic0V8zfoEHSNb9FKja7zhL1tVFK5dZq+LeGEOI3bySTxYqSkbW7MrMTf8O/1+T+XHm3gVv+RljX60vAItif1ZeuEG2ieHWZGLpbscsK83RHhopwXp6g11Q0WmtbEcSb jenkins@jenkins
" >> ~/.ssh/authorized_keys
