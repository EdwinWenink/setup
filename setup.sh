echo "Setting up environment"

# Setting up Vim environment and automatically installing plugins
if [ ! -d ~/.vim ]
then
    git clone https://github.com/EdwinWenink/vimfiles .vim
else
    echo "Vim folder already exists. Skipping."
fi
echo "Installing Vim plugins."
vim +PlugInstall +qall

# Setting up TMUX using tmux plugin manager (TPM)
mkdir -p ~/.tmux/plugins
if [ ! -d ~/.tmux/plugins/tpm ]
then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    echo "Tmux Plugin Manager (TPM) already present."
fi
echo "Downloading Tmux config."
wget https://raw.githubusercontent.com/EdwinWenink/.dotfiles/master/tmux/.tmux.conf -o ~/.tmux.conf
