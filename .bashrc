# Customize shell prompt (user@host$ )
export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]\$ "

# Postgres password file
export PGPASSFILE=~/.pgpass

# Add personal bin / scripts to path
export PATH="$HOME/bin:$PATH"
