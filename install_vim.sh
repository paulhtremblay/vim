sudo apt install vim #for linux 
mkdir -p ~/.backup
mkdir -p ~/.swap
mkdir -p ~/.undo

mkdir -p ~/.vim/pack/plugins/start
git clone --depth=1 https://github.com/ervandew/supertab.git ~/.vim/pack/plugins/start/supertab
git clone --depth=1 git@github.com:ap/vim-buftabline.git ~/.vim/pack/plugins/start/vim-buftabline
