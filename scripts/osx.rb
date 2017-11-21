# OSX apps go here, Evernote, Slack, Todoist etc...

dep "iTerm.app" do
  met? { "/Applications/iTerm.app".p.exist? }
  meet { shell "brew cask install iterm2" }
end

dep "Dropbox.app" do
  met? { "/Applications/Dropbox.app".p.exist? }
  meet { shell "brew cask install dropbox" }
end

dep "Slack.app" do
  source "https://slack.com/ssb/download-osx"
end

dep "Flux.app" do
  met? { "/Applications/Flux.app".p.exist? }
  meet { shell "brew cask install flux" }
end

dep "Firefox.app" do
  source "https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-GB"
end

dep "Skype.app" do
  source "http://www.skype.com/go/getskype-macosx.dmg"
end

dep "Spotify.app" do
  source "http://download.spotify.com/Spotify.dmg"
end

dep "Xcode.app" do
  met? { "/Applications/Xcode.app".p.exist? }
  meet { unmeetable! "Install Xcode via the App Store." }
end

dep "Todoist.app" do
  met? { "/Applications/Todoist.app".p.exist? }
  meet { unmeetable! "Install Todoist via the App Store." }
end

dep "Spectacle.app" do
  met? { "/Applications/Spectacle.app".p.exist? }
  meet { shell "brew cask install spectacle" }
end

dep "Postgres.app" do
  met? { "/Applications/Postgres.app".p.exist? }
  meet { shell "brew cask install postgres" }
end

dep "Pocket.app" do
  met? { "/Applications/Pocket.app".p.exist? }
  meet { unmeetable! "Install Pocket via the App Store." }
end

dep "OpenOffice.app" do
  met? { "/Applications/OpenOffice.app".p.exist? }
  meet { shell "brew cask install openoffice" }
end

dep "Google Chrome.app" do
  source "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
end

dep "GIMP.app" do
  met? { "/Applications/GIMP.app".p.exist? }
  meet { shell "brew cask install gimp" }
end

dep "Evernote.app" do
  source "https://evernote.com/download/get.php?file=EvernoteMac"
end

dep "VeraCrypt.app" do
  met? { "/Applications/VeraCrypt.app".p.exist? }
  meet {
    shell "brew cask install osxfuse"
    puts "⚠️  Make sure OSXFuse is installed with MACFuse Compatibility Layer enabled"
    shell "brew cask install veracrypt"
  }
end

dep "Sync.app" do
  source "https://www.sync.com/download/apple/Sync.dmg"
end

dep "VirtualBox.app" do
  met? { "/Applications/VirtualBox.app".p.exist? }
  meet { shell "brew cask install virtualbox" }
end

dep "Transmission.app" do
  met? { "/Applications/Transmission.app".p.exist? }
  meet { shell "brew cask install transmission" }
end

dep "VLC.app" do
  met? { "/Applications/VLC.app".p.exist? }
  meet { shell "brew cask install vlc" }
end

dep "Vivaldi.app" do
  met? { "/Applications/Vivaldi.app".p.exist? }
  meet { shell "brew cask install vivaldi" }
end

dep "Messenger.app" do
  met? { "/Applications/Messenger.app".p.exist? }
  meet { shell "brew cask install messenger" }
end

dep "HerokuToolbelt" do
  source "https://toolbelt.heroku.com/download/osx"
end

dep "DNSCrypt Menubar.app" do
  met? { "/Applications/DNSCrypt Menubar.app".p.exist? }
  meet { shell "brew cask install dnscrypt" }
end

dep "SpoofMac" do
  meet { shell('pip install SpoofMAC') }
end

dep "Backblaze.app" do
  met? { "/Applications/Backblaze.app".p.exist? }
  meet { shell "brew cask install backblaze" }
end

dep "Helium.app" do
  met? { "/Applications/Helium.app".p.exist? }
  meet { shell "brew cask install jadengeller-helium" }
end

# Install everything...

dep "all-osx-apps" do
  requires "Xcode.app"
  requires "iTerm.app"
  requires "Dropbox.app"
  requires "Slack.app"
  requires "Flux.app"
  requires "Firefox.app"
  requires "Skype.app"
  requires "Spotify.app"
  requires "Todoist.app"
  requires "Spectacle.app"
  requires "Postgres.app"
  requires "Pocket.app"
  requires "OpenOffice.app"
  requires "Google Chrome.app"
  requires "GIMP.app"
  requires "Evernote.app"
  requires "VeraCrypt.app"
  requires "Sync.app"
  requires "VirtualBox.app"
  requires "Transmission.app"
  requires "VLC.app"
  requires "Messenger.app"
  requires "HerokuToolbelt"
  requires "DNSCrypt Menubar.app"
  requires "SpoofMac"
  requires "Backblaze.app"
  requires "Helium.app"
end
