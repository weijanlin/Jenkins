Ubuntu 版本安裝
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
sudo apt-get update  
sudo apt-get install jenkins
```

### Step 3. 啟動 Jenkins
```
sudo service jenkins start  
```
