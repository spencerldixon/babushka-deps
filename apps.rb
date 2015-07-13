# Everything installed via Homebrew goes here

dep "vim.bin" do
  installs { via :brew, "vim" }
end

dep "git.bin" do
  installs { via :brew, "git" }
end

# Install everything

dep "all-packaged-apps" do
  requires "vim.bin"
  requires "git.bin"
end 
