rm ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc


echo "update submodules"

git submodule init
git submodule update

git submodule foreach git pull origin master
