
dep "zsh.bin" do
  installs { via :brew, "zsh zsh-completions" }
end

dep "install-oh-my-zsh" do
  met? { shell("derp") == "zsh: command not found: derp" }
  meet {
    shell "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"
    shell "chsh -s /bin/zsh"
  }
end

dep "install-zsh" do
  requires "zsh.bin"
  requires "install-oh-my-zsh"
end
