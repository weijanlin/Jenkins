Jenkins 在Ubuntu LXC 版本安裝
===

### Step 1. 新增 Jenkins Repo

由於 Jenkins deb repo 中並沒有 Jenkins 安裝包，因此需要透過第三方去下載 Jenkins repo
```
sudo apt-get upgrade 
sudo apt-get install wget
apt install gnupg2 -y
sudo apt-get install openjdk-8-jre
```
> 建立key認同 jetkins 是沒問題的 , 討論區給的網址不同, 目前測這個是OK的
```
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
```
> 要回應  OK 才算, 若回應gpg: no valid OpenPGP data found.就再執行一次看看應該就可以了
> 建立下載請單 , 並且更新及安裝
```
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
```

### Step 2. 透過 apt-get 安装 Jenkins
```
sudo apt-get update  
sudo apt-get install jenkins
```

### Step 3. 啟動 Jenkins
```
sudo service jenkins start  
```

### Step 4. 輸入啟用碼
> ie 輸入 ip:8080 會出現下列訊息
Unlock Jenkins
To ensure Jenkins is securely set up by the administrator, a password has been written to the log (not sure where to find it?) and this file on the server:

/var/lib/jenkins/secrets/initialAdminPassword

Please copy the password from either location and paste it below.

Administrator password
>再回ssh 用vi 將key 複製給網頁,輸入key 完成啟用認證
```
vi /var/lib/jenkins/secrets/initialAdminPassword
```

### Step 5.選擇Install suggested plugins

Customize Jenkins
Plugins extend Jenkins with additional features to support many different needs.
- [X] Install suggested plugins
- [ ] Select plugins to install
> Getting Started 會跑一陣子
> Jenkins 目前我安裝出現的是 2.303.3 

### Step 6.輸入管理者資訊原則上Jenkins 就建置完成了
