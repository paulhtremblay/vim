ssh
====
```

ssh-keygen -t ed25519 -C  "henry.tremblay@krusteaz.com"
cat ~/.ssh/id_ed25519.pub
```
[go to systems in github to upload]

vim
========================
sudo apt install vim
```
$ mkdir -p ~/.vim/pack/plugins/start
$ git clone --depth=1 https://github.com/ervandew/supertab.git ~/.vim/pack/plugins/start/supertab
$ git clone --depth=1 git@github.com:ap/vim-buftabline.git ~/.vim/pack/plugins/start/vim-buftabline

```

mkdir -p ~/.backup
mkdir -p ~/.swap
mkdir -p ~/.undo

Python
=======

use install_python.sh

Virtualenv
===========
/opt/python/3.12.4/bin/pip3.12 install virtualenv


mkdir -p $WORKON_HOME
find / -name virtualenvwrapper.sh
#in .bashrc
source /home/henry/.local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/Envs 
export VIRTUALENVWRAPPER_PYTHON=/opt/python/3.12.4/bin/python3.12
export VIRTUALENVWRAPPER_VIRTUALENV=/home/henry/.local/bin/virtualenv
export WORKON_HOME=~/Envs

mkvirtualenv -p /opt/python/3.12.4/bin/python3.12  <name>

msys2
====================

```
pacman -S vim
pacman -S openssh
pacman -S git
```
