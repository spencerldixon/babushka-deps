dep "install-vundle-for-vim" do
  met? { "~/.vim/bundle/Vundle.vim".p.dir? }
  meet {
    shell "git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
    shell "vim +PluginInstall +qall"
  }
end

dep "install-dotfiles-from-github" do
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

dep "install-dotfiles" do
  requires "install-vundle-for-vim"
  requires "install-dotfiles-from-github"
end
