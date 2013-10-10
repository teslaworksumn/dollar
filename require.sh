# Install common packages needed on Ubuntu
sudo apt-get update
sudo apt-get install -y g++
sudo apt-get install -y gcc
sudo apt-get install -y ruby
sudo apt-get install -y python
sudo apt-get install -y make
sudo apt-get install -y cmake
sudo apt-get install -y autoconf
sudo apt-get install -y golang-go
sudo apt-get install -y postgresql
sudo apt-get install -y nginx
sudo apt-get install -y clang
sudo apt-get upgrade -y vim
sudo apt-get install -y git

# Install docker, lxc-docker can only be installed if docker is not present
sudo apt-get purge -y docker
sudo apt-get install -y lxc-docker

# Installing Google-Chrome
sudo apt-get install -y libxss1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
sudo dpkg -i google-chrome*.deb
sudo echo "export PATH=$PATH:/usr/bin/google-chrome" >> ~/.bashrc

# Installing Sublime text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer

# Installing Ghex Editor
sudo apt-get install -y ghex

# Fixing any broken packages
sudo apt-get install -y -f

# Install gist package to make gists from terminal 
sudo apt-get install -y rubygems
gem install gist

sudo apt-get update
sudo apt-get autoclean
sudo apt-get autoremove 

sudo ./get_llvm_clang.sh
