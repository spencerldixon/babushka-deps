dep 'install-homebrew' do
  meet { shell '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"' }
end

dep "vim.bin" do
  met? { shell "brew list vim" }
  meet { shell "brew install vim" }
end

dep "neovim.bin" do
  met? { shell "brew list neovim" }
  meet { shell "brew install neovim" }
end

dep "git.bin" do
  met? { shell "brew list git" }
  meet { shell "brew install git" }
end

dep "tmux.bin" do
  met? { shell "brew list tmux" }
  meet { shell "brew install tmux" }
end

dep "openssl.bin" do
  met? { shell "brew list openssl" }
  meet { shell "brew install openssl" }
end

dep "wget.bin" do
  met? { shell "brew list wget" }
  meet { shell "brew install wget" }
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
  requires 'mas'
end
