# Install OSX GUI apps via brew cask
# You can also fetch apps from the appstore with MAS (https://github.com/mas-cli/mas)

dep 'iterm' do
  met? { shell 'brew cask list iterm2' }
  meet { shell 'brew cask install iterm2' }
end

dep 'sublime' do
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

dep "spoofmac" do
  meet { shell 'pip install SpoofMAC' }
end

dep 'tor' do
  met? { shell 'brew cask list tor-browser' }
  meet { shell 'brew cask install tor-browser' }
end

dep 'prey' do
  met? { shell 'brew cask list prey' }
  meet { shell 'brew cask install prey' }
end

dep 'hey' do
  met? { shell 'brew cask list hey' }
  meet { shell 'brew cask install hey' }
end

dep 'notion' do
  met? { shell 'brew cask list notion' }
  meet { shell 'brew cask install notion' }
end

dep 'runcat' do
  met? { '/Applications/RunCat.app'.p.exist? }
  meet { shell 'mas install 1429033973' }
end

dep 'discord' do
  met? { shell 'brew cask list discord' }
  meet { shell 'brew cask install discord' }
end

dep 'signal' do
  met? { shell 'brew cask list signal' }
  meet { shell 'brew cask install signal' }
end

dep 'zoom' do
  met? { shell 'brew cask list zoom' }
  meet { shell 'brew cask install zoom' }
end

dep 'malwarebytes' do
  met? { shell 'brew cask list malwarebytes' }
  meet { shell 'brew cask install malwarebytes' }
end

dep 'mullvad' do
  met? { shell 'brew cask list mullvadvpn' }
  meet { shell 'brew cask install mullvadvpn' }
end

dep 'elgato' do
  source "https://edge.elgato.com/egc/macos/eccm/1.1.4/Control_Center_1.1.4.10368.zip"
end

# Minimal install, suitable for leased machines / work laptops
dep 'apps/apps-minimal' do
  requires 'notion'
  requires 'firefox'
  requires 'spectacle'
  requires 'iterm'
  requires 'sublime'
  requires 'postgres'
  requires 'runcat'
  requires 'spotify'
end

# Full install suitable for personal machines
dep 'apps/apps-full' do
  requires 'apps-minimal'
  requires 'music/apps'
  requires 'hey'
  requires 'slack'
  requires 'discord'
  requires 'tor'
  requires 'signal'
  requires 'vlc'
  requires 'evernote'
  requires 'sync'
  requires 'veracrypt'
  requires 'zoom'
  requires 'malwarebytes'
  requires 'mullvad'
  requires 'elgato'
  requires 'transmission'
  requires 'prey'
end
