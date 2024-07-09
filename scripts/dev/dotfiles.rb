dep "vim-plug" do
  met? { "~/.vim/autoload/plug.vim".p.exists? }
  meet {
    shell "mkdir -p ~/.vim/autoload"
    shell "wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O ~/.vim/autoload/plug.vim"
    shell "vim +PlugInstall +qall"
  }
end

dep "tpm" do
  met? { "~/.tmux/plugins/tpm".p.dir? }
  meet { shell "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm" }
end

dep "install-dotfiles" do
  met? { "~/dotfiles".p.dir? }
  meet {
    shell "cd ~"
    shell "git clone https://github.com/spencerldixon/dotfiles.git"
    shell "cd ~/dotfiles"
    shell "chmod +x install.sh"
    shell "./install.sh"
  }
end

dep "install-neovim" do
  met? { "~/.config/nvim".p.dir? }
  meet { shell 'git clone https://github.com/spencerldixon/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim' }
end

# Install everything

dep "dotfiles" do
  requires "vim-plug"
  requires "tpm"
  requires "install-dotfiles"
  requires "install-neovim"
end
