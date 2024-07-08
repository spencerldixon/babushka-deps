dep "vim-plug" do
  met? { "~/.vim/autoload/plug.vim".p.dir? }
  meet {
    shell "wget https://github.com/junegunn/vim-plug/blob/master/plug.vim -O ~/.vim/autoload/plug.vim"
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
    shell "git clone git://github.com/spencerldixon/dotfiles.git"
    shell "cd ~/dotfiles"
    shell "chmod +x install.sh"
    shell "./install.sh"
  }
end

# Install everything

dep "dotfiles" do
  requires "vim-plug"
  requires "tpm"
  requires "install-dotfiles"
end
