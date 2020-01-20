dep 'install-homebrew' do
  meet? { shell '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"' }
end
