echo Installing the latest version of Git
sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm
sudo yum -y remove git
sudo yum -y install git2u
