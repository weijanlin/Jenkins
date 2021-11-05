apt-get update
apt-get install -y git
apt-get install -y wget
apt-get install -y systemd
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt-get install -y apt-transport-https
apt-get install -y dotnet-sdk-3.1
apt-get install -y vim curl git0