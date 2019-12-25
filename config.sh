# This script prepares preferred configurations on Ubuntu 18.04 LTS
# After execution, the system should be rebooted

# First, create src directory under which I like to keep repos
mkdir -p ~/src/github.com/daniel-salmon

# Clone my repo containing all configurations
cd ~/src/github.com/daniel-salmon
git clone https://github.com/daniel-salmon/dotfiles.git
cd dotfiles

# bashrc
cat .bashrc | tee -a ~/.bashrc

# vimrc
cp .vimrc ~/.vimrc

# Get background image
# Lake Brienz, Switzerland
# Photo by Andreas Gücklhorn on Unsplash
wget -O ~/Pictures/background.jpg https://unsplash.com/photos/mawU2PoJWfU/download

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
