# Install OSX GUI apps via brew cask
# You can also fetch apps from the appstore with MAS (https://github.com/mas-cli/mas)

dep 'iterm' do
  met? { shell? 'brew list iterm2' }
  meet { shell 'brew install iterm2' }
end

dep 'sublime' do
  met? { shell? 'brew list sublime-text' }
  meet { shell 'brew install sublime-text' }
end

dep 'slack' do
  met? { shell? 'brew list slack' }
  meet { shell 'brew install slack' }
end

dep 'firefox' do
  met? { shell? 'brew list firefox' }
  meet { shell 'brew install firefox' }
end

dep 'spotify' do
  met? { shell? 'brew list spotify' }
  meet { shell 'brew install spotify' }
end

dep 'rectangle' do
  met? { shell? 'brew list rectangle' }
  meet { shell 'brew install --cask rectangle' }
end

dep 'postgresql' do
  met? { shell? 'brew list postgresql' }
  meet { shell 'brew install postgresql' }
end

dep 'veracrypt' do
  met? { shell? 'brew list veracrypt' }
  meet {
    shell "brew install osxfuse"
    shell "brew install veracrypt"
  }
end

dep 'sync' do
  met? { shell? 'brew list sync' }
  meet { shell 'brew install sync' }
end

dep 'transmission' do
  met? { shell? 'brew list transmission' }
  meet { shell 'brew install transmission' }
end

dep 'vlc' do
  met? { shell? 'brew list vlc' }
  meet { shell 'brew install vlc' }
end
#
# dep "spoofmac" do
  # meet { shell 'pip install SpoofMAC' }
# end

dep 'tor' do
  met? { shell? 'brew list tor-browser' }
  meet { shell 'brew install tor-browser' }
end

dep 'hey' do
  met? { shell? 'brew list hey' }
  meet { shell 'brew install hey' }
end

dep 'notion' do
  met? { shell? 'brew list notion' }
  meet { shell 'brew install notion' }
end

dep 'discord' do
  met? { shell? 'brew list discord' }
  meet { shell 'brew install discord' }
end

dep 'signal' do
  met? { shell? 'brew list signal' }
  meet { shell 'brew install signal' }
end

dep 'zoom' do
  met? { shell? 'brew list zoom' }
  meet { shell 'brew install zoom' }
end

dep 'malwarebytes' do
  met? { shell? 'brew list malwarebytes' }
  meet { shell 'brew install malwarebytes' }
end

dep 'mullvad' do
  met? { shell? 'brew list mullvadvpn' }
  meet { shell 'brew install mullvadvpn' }
end

dep 'elgato' do
  source "https://edge.elgato.com/egc/macos/eccm/1.1.4/Control_Center_1.1.4.10368.zip"
end

dep 'docker' do
  met? { shell? 'brew list docker'}
  meet { shell 'brew install docker'}
end

# Minimal install, suitable for leased machines / work laptops
dep 'apps-apps-minimal' do
  requires 'notion'
  requires 'firefox'
  requires 'rectangle'
  requires 'iterm'
  requires 'sublime'
  requires 'postgresql'
  requires 'spotify'
  requires 'docker'
  requires 'mullvad'
  requires 'hey'
  requires 'slack'
  requires 'tor'
  requires 'vlc'
  requires 'malwarebytes'
end

# Full install suitable for personal machines
dep 'apps-apps-full' do
  requires 'apps-apps-minimal'
  requires 'music/apps'
  requires 'discord'
  requires 'signal'
  requires 'vlc'
  requires 'sync'
  requires 'veracrypt'
  requires 'zoom'
  requires 'elgato'
  requires 'transmission'
end
