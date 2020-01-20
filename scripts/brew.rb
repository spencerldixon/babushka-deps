# Everything installed via Homebrew goes here

dep "vim.bin" do
  installs { via :brew, "vim" }
end

dep "git.bin" do
  installs { via :brew, "git" }
end

dep "tmux.bin" do
  installs { via :brew, "tmux" }
end

dep "yarn.bin" do
  installs { via :brew, "yarn" }
end

dep "openssl.bin" do
  installs { via :brew, "openssl" }
end

dep "tree.bin" do
  installs { via :brew, "tree" }
end

dep "python.bin" do
  installs { via :brew, "python" }
end

dep "node.bin" do
  installs { via :brew, "node@12" }
end

dep "redis" do
  installs { via :brew, "redis" }
end

dep 'mas' do
  installs { via :brew, 'mas' }
end

# Install everything

dep 'install-brew-packages' do
  requires "vim.bin"
  requires "git.bin"
  requires "tmux.bin"
  requires "yarn.bin"
  requires "openssl.bin"
  requires "tree.bin"
  requires "python.bin"
  requires "node.bin"
  requires "redis"
  requires 'mas'
end
