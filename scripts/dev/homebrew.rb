dep 'install-homebrew' do
  met? { "/opt/homebrew".p.dir? }
  meet { shell '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"' }
end

dep "vim.bin" do
  installs { via :brew, "vim" }
end

dep "neovim.bin" do
  installs { via :brew, "neovim" }
end

dep "git.bin" do
  installs { via :brew, "git" }
end

dep "gh.bin" do
  installs { via :brew, "gh" }
end

dep "stow.bin" do
  installs { via :brew, "stow" }
end

dep "tmux.bin" do
  installs { via :brew, "tmux" }
end

dep "openssl.bin" do
  installs { via :brew, "openssl" }
end

dep "wget.bin" do
  installs { via :brew, "wget" }
end

dep "redis" do
  met? { system 'redis-server --version' }
  meet { shell 'brew install redis' }
end

dep 'mas' do
  met? { system('! brew info mas | grep "Not installed"') }
  meet { shell 'brew install mas' }
end

# Install everything

dep 'homebrew' do
  requires "install-homebrew"
  requires "vim.bin"
  requires "git.bin"
  requires "tmux.bin"
  requires "openssl.bin"
  requires 'wget.bin'
  requires 'redis'
  requires 'stow'
  requires 'gh'
  requires 'mas'
end
