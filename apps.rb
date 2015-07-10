# Everything installed via Homebrew goes here

dep "vim.bin" do
  installs "vim"
end

# Install everything

dep "all-packaged-apps" do
  requires "vim.bin"
end 
