PVE 自訂 LXC 樣版來產生 CT
===

* datasource: [PVE 支援 CT , 但真的要自行從頭產生 LXC 的樣版其實有點麻煩, 比較快的方式就是拿現成的改一下來用, 在 forum 看到個步驟相當實用](https://forum.proxmox.com/threads/customize-a-lxc-template.23461/)
* [原廠指令手冊](https://pve.proxmox.com/pve-docs/pct.1.html)

## 1.抓一個你想改的 lxc/openvz 的樣版
> 用WEB 介面建立了一個 ub18tmp id:63008 

## 2.複製樣版來產生一個CT
>pct clone <vmid> <newid> [OPTIONS]
```
pct clone 63008 63013 
```  
### 2.2 config
>ip=<(IPv4/CIDR|dhcp|manual)> 
```
pct config 63013 -hostname "hello"  -net0 name=eth0,gw=192.168.11.1,ip=192.168.11.13/24,type=veth
``` 
 ## 3.啟動這個 CT
boot it
## 4.open it
```
pct enter
```
## 5.在這個 CT 做你想要的更改, 安裝軟件, 修改什麼看你高興
5) install / modificat everything you want

## 6.移除網路相關的設定, 清乾淨這個 CT
remove all network interfaces
```
clean it apt-get clean
````

## 7.重啟CT
```
pct reboot
``` 
## 8.用 vzdump (或UI Backup 的操作) 產生 GZIP 格式的備份

## 9.把生成的 .gz 檔 由 備份的
> ...../dump/ 目錄 移到 放 lxc 樣版的 ..... /templates/cache/ 目錄, 並改一個好認的名字

## 10.開心使用這個己修改過的 lxc 樣版
> 與網友討論測試後確認, 這方式會不支援 CT 的 Unprivileged ，用這方法 這選項不能打勾 這選項不能打勾 這選項不能打勾

 ## 11.擴充CT 容量
 >pct resize <id> rootfs <storage(ex: +4G)
 ```
 pct resize 63013 rootfs +1G
```
## 12.像docker 一樣執行類以Dockerfile 的指令
```
pct create <id> /var/lib/vz/template/cache/centos-7-default_20170504_amd64.tar.xz \
    -arch amd64 \
    -ostype <centos|ubuntu|etc> \
    -hostname <hostname> \
    -cores <cores> \
    -memory <memory(MB)> \
    -swap <swap(MB)> \
    -storage local-lvm \
    -password \
    -net0 name=eth0,bridge=<bridge>,gw=<gateway>,ip=<cidr>,type=veth  &&\
pct start <id> &&\
sleep 10 &&\
pct resize <id> rootfs <storage(ex: +4G)> &&\
pct exec <id> -- bash -c "yum update -y &&\
    yum install -y openssh-server &&\
    systemctl start sshd &&\
    useradd -mU hogeuser &&\
    echo "password" | passwd --stdin hogeuser"
```
 
                                      
