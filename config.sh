# Get background image
# Lake Brienz, Switzerland
# Photo by Andreas Gücklhorn on Unsplash
wget -O ~/Pictures/background.jpg https://unsplash.com/photos/mawU2PoJWfU/download

# Create personal bin / scripts folder
mkdir -p ~/bin

# Create src directory and cd into it
mkdir -p ~/src/github.com/daniel-salmon
cd ~/src/github.com/daniel-salmon

# Clone the home directory
git clone https://github.com/daniel-salmon/home.git

# Navigate to the cloned home directory
cd home

# vimrc
cp .vimrc ~/.vimrc

# bashrc
cp .bashrc ~/.bashrc
source ~/.bashrc

# Git configurations
git config --global user.email me@daniel-salmon.com
git config --global user.name daniel-salmon
git config --global core.editor "vim"

# Postgres password file
# See https://www.postgresql.org/docs/current/libpq-pgpass.html
touch ~/.pgpass
chmod 0600 ~/.pgpass
