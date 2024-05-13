# home

This repository contains scripts and dotfiles I like to use for configuration
purposes. `install.sh` and `config.sh` dictate how to prepare a fresh install
personal use.

# usage

On a fresh install, you won't have `git` so first `wget` `install.sh`:

```sh
$ cd ~/Downloads
$ wget https://raw.githubusercontent.com/daniel-salmon/home/master/install.sh
$ chmod +x install.sh
```

That last command makes the file executable. Now that it's executable, execute
the install script:

```sh
$ ./install.sh
```

Similarly, we fetch the configuration script and execute it as well:

```sh
$ cd ~/Downloads
$ wget https://raw.githubusercontent.com/daniel-salmon/home/master/config.sh
$ chmod +x config.sh
$ ./config.sh
```
