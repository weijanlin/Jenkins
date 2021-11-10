>vi /etc/ssh/sshd_config
```
Port 22
PasswordAuthentication yes
PermitRootLogin yes -> 是否開放 root 登入
```
>vi /etc/ssh/ssh_config
```
StrictHostKeyChecking no
```
or
```
sudo sed -i "s/#Port 22/Port 22/g" /etc/ssh/sshd_config
sudo sed -i "s/#PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
sudo sed -i "s/#PermitRootLogin prohibit-password/#PermitRootLogin yes/g" /etc/ssh/sshd_config
sudo sed -i "s/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g" /etc/ssh/ssh_config
/etc/init.d/ssh restart
```
更改完存檔後記得重啟服務
```
/etc/init.d/ssh restart

```
在Jenkins 主機上下指令，直接使用ssh-copy-id 主機名命令將公鑰拷貝到對方的主機下，以數莓派為例，如下：
```
ssh-copy-id -i ~/.ssh/id_rsa.pub pi@192.168.11.130
```

