ssh
====
```

ssh-keygen -t ed25519 -C  "henry.tremblay@krusteaz.com"
cat ~/.ssh/id_ed25519.pub
```
[go to systems in github to upload]

`sudo apt-get install openssh-server`

`touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys`

[add public key to authorized_keys]

git
====
```

#have to install git with sudo apt install git
git config --global core.editor vim

```

vim
========================
```
#older versions of ubuntu
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update

sudo apt install vim #for linux 

mkdir -p ~/.backup
mkdir -p ~/.swap
mkdir -p ~/.undo
"create a file ~/.vimrc/vimrc with one line, pointing to this file: source ~/vim/vimrc2
mkdir -p ~/.vim/pack/plugins/start
git clone --depth=1 https://github.com/ervandew/supertab.git ~/.vim/pack/plugins/start/supertab
git clone --depth=1 git@github.com:ap/vim-buftabline.git ~/.vim/pack/plugins/start/vim-buftabline

```


Python
=======

use `install_python.sh`

pacman
-------

```
pacman -S msys/python3
pacman -S python-pip
```

# msys/python3 => posix
# mingw64/mingw-w64-x86_64-python3 => Windows

Virtualenv
===========

linux
------
```
/opt/python/3.12.4/bin/pip3.12 install virtualenv
/opt/python/3.12.4/bin/pip3.12 install virtualenvwrapper
#in .bashrc
export VIRTUALENVWRAPPER_PYTHON=/opt/python/3.12.4/bin/python3.12
export VIRTUALENVWRAPPER_VIRTUALENV=/home/henry/.local/bin/virtualenv
source /home/henry/.local/bin/virtualenvwrapper.sh
```

msys2
------

```
python -m venv ~/Envs/base
source ~/Envs/base/bin/activate
pip install virtualenv
pip install virtualenvwrapper
#in bashrc
export VIRTUALENVWRAPPER_PYTHON=/home/h0t08693/Envs/base/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/home/h0t08693/Envs/base/bin/virtualenv
source /home/h0t08693/Envs/base/bin/virtualenvwrapper.sh
```

all
----

```
mkdir -p $WORKON_HOME
find / -name virtualenvwrapper.sh
#in .bashrc
export WORKON_HOME=~/Envs 

mkvirtualenv -p /opt/python/3.12.4/bin/python3.12  <name>
```

msys2
====================

```
pacman -S vim
pacman -S openssh
pacman -S git
```

docker
=======
sudo groupadd docker
sudo usermod -aG docker ${USER}

notes
=======

ssh-keyscan -t rsa ssh.dev.azure.com >> ~/.ssh/known_hosts

resolution
============

 set-vmvideo Ubuntu -horizontalresolution:1920 -verticalresolution:1080 -resolutiontype single

Autonomous DWH
==================

https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/autonomous-database-container-free.html
