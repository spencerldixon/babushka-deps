dep "zsh.bin" do
  installs { via :brew, "zsh zsh-completions" }
end

dep "oh-my-zsh" do
  met? { File.exists?(File.expand_path '~/.oh-my-zsh')}
  meet {
    shell "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"
    shell "chsh -s /bin/zsh"
  }
end

dep "zsh" do
  requires "zsh.bin"
  requires "oh-my-zsh"
end
