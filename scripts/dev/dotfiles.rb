dep "vim-plug" do
  met? { "~/.vim/autoload/plug.vim".p.exists? }
  meet {
    shell "mkdir -p ~/.vim/autoload"
    shell "wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O ~/.vim/autoload/plug.vim"
    shell "vim +PlugInstall +qall"
  }
end

dep "install-dotfiles" do
  met? { "~/dotfiles".p.dir? }
  meet {
    shell "cd ~"
    shell "git clone https://github.com/spencerldixon/dotfiles.git"
    shell "cd ~/dotfiles"
    shell "git submodule update --init --recursive"
    shell "stow git iterm2 nvim oh_my_zsh tmux vim zellij zsh"
  }
end

# Install everything

dep "dotfiles" do
  requires "install-dotfiles"
  requires "vim-plug"
end
