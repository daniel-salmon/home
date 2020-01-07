# Vim
sudo apt-get --yes install vim-gnome

# Git
sudo apt-get --yes install git

# libsecret
# Useful for managing credentials, e.g. for git
sudo apt-get --yes install libsecret-1-0 libsecret-1-dev
cd /usr/share/doc/git/contrib/credential/libsecret
sudo make
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret

# curl
sudo apt-get --yes install curl

# dconf
sudo apt-get --yes install dconf-tools

# Go
# To remove an installation: $ sudo rm -rf /usr/local/go
# You can (should) verify the download using sha256sum, for example: 
# $ sha256sum go1.13.5.linux-amd64.tar.gz
curl -0 --output ~/Downloads/go1.13.5.linux-amd64.tar.gz https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf ~/Downloads/go1.13.5.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
rm -rf ~/Downloads/go1.13.5.linux-amd64.tar.gz

# Docker
# Taken directly from docker docs: https://docs.docker.com/install/linux/docker-ce/ubuntu/
# These steps also include the post-installation steps for Linux: https://docs.docker.com/install/linux/linux-postinstall/
sudo apt-get --yes install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that you have the key with the proper fingerprint:
# $ sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Allow non-root users to run Docker without sudo
# sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Configure Docker to start on boot
sudo systemctl enable docker

# Docker Compose
# Taken directly from docker docs: https://docs.docker.com/compose/install/
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# LaTEX
# This full install will take a bit of time,
# but it's worth it to avoid missing-package nightmares down the road
sudo apt-get --yes install texlive-full

# PostgreSQL
# Taken from the Postgres docs: https://www.postgresql.org/download/linux/ubuntu/
# NOTE: This is particularly useful for installing (and locking) a specific major Postgres version
# This installs version 11
codename=$(grep 'DISTRIB_CODENAME' /etc/lsb-release | sed 's/DISTRIB_CODENAME=//')
sudo touch /etc/apt/sources.list.d/pgdg.list
echo "deb http://apt.postgresql.org/pub/repos/apt/ $codename-pgdg main" \
	| sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get --yes update
sudo apt-get --yes install postgresql-11
sudo apt-get --yes install pgadmin4

# Version-lock the Postgres installation
sudo apt-mark hold postgresql-11

# Install Opera web browser
# Often useful for streaming music on non-primary web browser (Firefox)
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"
sudo apt-get --yes install opera-stable

# R + OpenBLAS
sudo apt-get --yes install libopenblas-base r-base

# csvkit
# Useful for performing data jiu jitsu
sudo apt-get --yes install csvkit

# jq
# Useful for working with JSON
sudo apt-get --yes install jq

# Tange2011a
# GNU Parallel
# O. Tange
sudo apt-get --yes install parallel
