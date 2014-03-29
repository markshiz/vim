git submodule update --init 
rm -rf ~/.vimrc
rm -rf ~/.gvimrc
mkdir -p ~/.vim/
cp -r -v * ~/.vim/
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
