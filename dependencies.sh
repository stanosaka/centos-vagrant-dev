#!/bin/bash
echo Updating packages

# yum -y makecache fast
yum -y makecache

if ! rpm -q deltarpm;
   then
       yum -y install deltarpm
fi

yum -y update

if [  ! -f /home/vagrant/.vagrant-installation/dev.installed ]
then
    echo Installing the CentOS 7 Development Tools
    touch /home/vagrant/.vagrant-installation/dev.installed
    yum -y install linux-headers-$(uname -r) epel-release build-essential dkms epel-release
    yum -y groupinstall "Development Tools"
    yum -y install kernel-devel
    yum -y install the_silver_searcher
    yum -y install libXScrnSaver # Required for Markdown viewer "vmd"
    yum -y install nodejs
    yum -y install xz
    sudo npm install -g vmd
    sudo npm install -g tern
    yum -y install ack
fi

if [  ! -f /home/vagrant/.vagrant-installation/deps.installed ]
then
    echo Install various dependencies
    touch /home/vagrant/.vagrant-installation/deps.installed
    yum -y install yum-utils libacl fortune-mod cowsay graphviz java adobe-source-code-pro-fonts perl-Digest-MD5 maven xterm mlocate lynx SDL SDL-devel htop glances ruby gettext-devel gtk2 gtk2-devel gtkmm24 gtkmm24-devel global firefox
    yum-builddep -y emacs
    gem install taskjuggler
fi

if [  ! -f /home/vagrant/.vagrant-installation/X11.installed ]
then
    echo Installing X11 dependencies
    touch /home/vagrant/.vagrant-installation/x11.installed
    yum -y install xorg-x11-xauth
    yum -y install xorg-x11-apps.x86_64
fi

if [ ! -f /home/vagrant/.vagrant-installation/sbcl.installed ]
then
    echo Installing SBCL
    touch /home/vagrant/.vagrant-installation/sbcl.installed
    yum -y install sbcl
fi

if [ ! -f /home/vagrant/.vagrant-installation/fish.installed ]
then
    echo Installing Fish
    touch /home/vagrant/.vagrant-installation/fish.installed
    yum -y install fish

    # Make fish the default shell after installation is completed
    # chsh -s /usr/bin/fish
fi
