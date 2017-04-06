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

dep "archey.bin" do
  installs { via :brew, "archey" }
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

# Install everything

dep "all-packaged-apps" do
  requires "vim.bin"
  requires "git.bin"
  requires "tmux.bin"
  requires "archey.bin"
  requires "openssl.bin"
  requires "tree.bin"
  requires "python.bin"
end
