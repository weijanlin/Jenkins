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
sudo sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
sudo sed -i "s/#PermitRootLogin prohibit-password/#PermitRootLogin yes/g" /etc/ssh/sshd_config
sudo sed -i "s/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g" /etc/ssh/ssh_config
/etc/init.d/ssh restart
```
更改完存檔後記得重啟服務
```
/etc/init.d/ssh restart

```
