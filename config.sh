# This script prepares preferred configurations on Ubuntu 18.04 LTS
# After execution, the system should be rebooted

# First, obtain external dependencies

# Get background image
# Lake Brienz, Switzerland
# Photo by Andreas Gücklhorn on Unsplash
wget -O ~/Pictures/background.jpg https://unsplash.com/photos/mawU2PoJWfU/download

# Install Qogir theme
cd ~/Downloads
git clone https://github.com/vinceliuice/Qogir-theme.git
cd Qogir-theme
./install.sh --theme ubuntu --color dark --win square
cd ..
rm -rf Qogir-theme

# Create src directory under which I like to keep repos
mkdir -p ~/src/github.com/daniel-salmon

# Clone my repo containing all configurations
cd ~/src/github.com/daniel-salmon
git clone https://github.com/daniel-salmon/dotfiles.git
cd dotfiles

# bashrc
cat .bashrc | tee -a ~/.bashrc

# vimrc
cp .vimrc ~/.vimrc

# Load my custom dconf profile
dconf load dconf.txt

# Remove Ubuntu dock
sudo rm -rf /usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com

# Create personal bin / scripts folder
mkdir -p ~/bin

# Clone GitHub repo containing personal bin files and copy to ~/bin
cd ~/src/github.com/daniel-salmon/
git clone https://github.com/daniel-salmon/bin
cp -r bin ~/bin

# Source ~/.bashrc
source ~/.bashrc

# Git configurations
git config --global user.email me@daniel-salmon.com
git config --global user.name daniel-salmon

# Docker
mkdir ~/docker

# Postgres docker-compose.yml
mkdir -p ~/docker/postgres
curl https://gist.githubusercontent.com/daniel-salmon/73ce6defa395031dcff87d520a0bcbcf/raw/5a5508bc728f2eb3a33c3b9a22f95b9d7da38076/docker-compose.yml > ~/docker/postgres/docker-compose.yml

# Elasticsearch + Kibana docker-compose.yml
mkdir -p ~/docker/elasticsearch
curl https://gist.githubusercontent.com/daniel-salmon/6703e160676e4b904230cf9ebfc05826/raw/6ecf18710483afb4b75ec438578022086b5936f7/docker-compose.yml > ~/docker/elasticsearch/docker-compose.yml
