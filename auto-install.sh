# this script installs basics for fresh regolith-linux
#
# install laptop battery status bar indicators
# uncomment if needed
# sudo apt install i3xrocks-battery
#
# add git repository
sudo add-apt-repository ppa:git-core/ppa -y # add git repository 
sudo add-apt-repository ppa:neovim-ppa/unstable -y # add neovim repository
#
# update
sudo apt update
#
# install dependencies
sudo apt install make gcc ripgrep unzip git xclip neovim tmux neofetch curl zsh
#
# kickstart.nvim setup
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
#
# oh my zsh install
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#
# oh my tmux install
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
