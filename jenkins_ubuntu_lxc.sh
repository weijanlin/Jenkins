sudo apt-get upgrade -y
sudo apt-get install wget -y
apt install gnupg2 -y
sudo apt-get install openjdk-8-jre -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update  -y
sudo apt-get install jenkins -y
sudo service jenkins start