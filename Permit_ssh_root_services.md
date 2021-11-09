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
sudo sed -i "s/StrictHostKeyChecking yes/StrictHostKeyChecking no/g" /etc/ssh/ssh_config
```
更改完存檔後記得重啟服務
```
/etc/init.d/ssh restart

```
