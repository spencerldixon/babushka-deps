# Install OSX GUI apps via brew cask
# You can also fetch apps from the appstore with MAS (https://github.com/mas-cli/mas)

dep 'iterm' do
  met? { shell 'brew cask list iterm2' }
  meet { shell 'brew cask install iterm2' }
end

# dep 'sophos' do
  # met? { shell 'brew cask list sophos-anti-virus-home-edition' }
  # meet { shell 'brew cask install sophos-anti-virus-home-edition' }
# end

dep 'sublime-text' do
  met? { shell 'brew cask list sublime-text' }
  meet { shell 'brew cask install sublime-text' }
end

dep 'slack' do
  met? { shell 'brew cask list slack' }
  meet { shell 'brew cask install slack' }
end

dep 'firefox' do
  met? { shell 'brew cask list firefox' }
  meet { shell 'brew cask install firefox' }
end

dep 'skype' do
  met? { shell 'brew cask list skype' }
  meet { shell 'brew cask install skype' }
end

dep 'spotify' do
  met? { shell 'brew cask list spotify' }
  meet { shell 'brew cask install spotify' }
end

dep 'todoist' do
  met? { '/Applications/Todoist.app'.p.exist? }
  meet { shell 'mas install 585829637' }
end

dep 'spectacle' do
  met? { shell 'brew cask list spectacle' }
  meet { shell 'brew cask install spectacle' }
end

dep 'postgresql' do
  met? { shell 'brew cask list postgres' }
  meet { shell 'brew cask install postgres' }
end

dep 'evernote' do
  met? { shell 'brew cask list evernote' }
  meet { shell 'brew cask install evernote' }
end

dep 'veracrypt' do
  met? { shell 'brew cask list veracrypt' }
  meet {
    shell "brew cask install osxfuse"
    shell "brew cask install veracrypt"
  }
end

dep 'sync' do
  met? { shell 'brew cask list sync' }
  meet { shell 'brew cask install sync' }
end

dep 'transmission' do
  met? { shell 'brew cask list transmission' }
  meet { shell 'brew cask install transmission' }
end

dep 'vlc' do
  met? { shell 'brew cask list vlc' }
  meet { shell 'brew cask install vlc' }
end

dep 'messenger' do
  met? { shell 'brew cask list messenger' }
  meet { shell 'brew cask install messenger' }
end

# dep 'dnscrypt' do
  # met? { shell 'brew cask list dnscrypt' }
  # meet { shell 'brew cask install dnscrypt' }
# end

dep "spoofmac" do
  meet { shell 'pip install SpoofMAC' }
end

dep 'helium' do
  met? { shell 'brew cask list jadengeller-helium' }
  meet { shell 'brew cask install jadengeller-helium' }
end

dep 'protonvpn' do
  met? { shell 'brew cask list protonvpn' }
  meet { shell 'brew cask install protonvpn' }
end

dep 'guitar pro' do
  met? { shell 'brew cask list guitar-pro' }
  meet { shell 'brew cask install guitar-pro' }
end

dep 'tor' do
  met? { shell 'brew cask list tor' }
  meet { shell 'brew cask install tor' }
end

# Install everything...

dep 'install-cask-applications' do
  requires 'iterm'
  # requires 'sophos'
  requires 'sublime-text'
  requires 'slack'
  requires 'firefox'
  requires 'skype'
  requires 'spotify'
  requires 'todoist'
  requires 'spectacle'
  requires 'postgresql'
  requires 'evernote'
  requires 'veracrypt'
  requires 'sync'
  requires 'transmission'
  requires 'vlc'
  requires 'messenger'
  # requires 'dnscrypt'
  requires 'spoofmac'
  requires 'helium'
  requires 'protonvpn'
  requires 'guitar pro'
  requires 'tor'
end
