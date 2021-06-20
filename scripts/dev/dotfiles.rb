dep "vundle" do
  met? { "~/.vim/bundle/Vundle.vim".p.dir? }
  meet {
    shell "git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
    shell "vim +PluginInstall +qall"
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
    shell "git clone git://github.com/spencerldixon/dotfiles.git"
    shell "cd ~/dotfiles"
    shell "chmod +x install.sh"
    shell "./install.sh"
  }
end

# Install everything

dep "dotfiles" do
  requires "vundle"
  requires "tpm"
  requires "install-dotfiles"
end
