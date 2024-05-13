# Vim
sudo apt-get --yes install vim-gtk3

# Git
sudo apt-get --yes install git

# make
sudo apt-get --yes install make

# gcc
sudo apt-get --yes install gcc

# curl
sudo apt-get --yes install curl

# tmux
sudo apt-get --yes install tmux

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

# libsecret
# Useful for managing git credentials
sudo apt-get --yes install libsecret-1-0 libsecret-1-dev
sudo make --directory=/usr/share/doc/git/contrib/credential/libsecret
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
