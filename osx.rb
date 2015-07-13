# OSX apps go here, Evernote, Slack, Todoist etc...

dep "iTerm.app" do
  source "https://iterm2.com/downloads/stable/iTerm2-2_1_1.zip"
end

dep "Dropbox.app" do
  source "https://www.dropbox.com/download?plat=mac"
end

dep "Slack.app" do
  source "https://slack.com/ssb/download-osx"
end

dep "Flux.app" do
  source "http://secure.herf.org/flux/Flux.zip"
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
  source "https://s3.amazonaws.com/spectacle/downloads/Spectacle+0.8.10.zip"
end

dep "RescueTime.app" do
  source "https://www.rescuetime.com/installers/RescueTimeInstaller.dmg"
end

dep "Postgres.app" do
  source "https://github.com/PostgresApp/PostgresApp/releases/download/9.4.4.0/Postgres-9.4.4.0.zip"
end

dep "Pocket.app" do
  met? { "/Applications/Pocket.app".p.exist? }
  meet { unmeetable! "Install Pocket via the App Store." }
end

dep "OpenOffice.app" do
  source "http://downloads.sourceforge.net/project/openofficeorg.mirror/4.1.1/binaries/en-GB/Apache_OpenOffice_4.1.1_MacOS_x86-64_install_en-GB.dmg?r=&ts=1436539817&use_mirror=freefr"
end

dep "Google Chrome.app" do
  source "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
end

dep "GIMP.app" do
  source "http://download.gimp.org/pub/gimp/v2.8/osx/gimp-2.8.14.dmg"
end

dep "Evernote.app" do
  source "https://evernote.com/download/get.php?file=EvernoteMac"
end

dep "Atom.app" do
  source "https://atom.io/download/mac"
end

dep "VirtualBox.app" do
  source "http://download.virtualbox.org/virtualbox/5.0.0/VirtualBox-5.0.0-101573-OSX.dmg"
end

# Install everything...

dep "all-osx-apps" do
  requires "iTerm.app"
  requires "Dropbox.app"
  requires "Slack.app"
  requires "Flux.app"
  requires "Firefox.app"
  requires "Skype.app"
  requires "Spotify.app"
  requires "Xcode.app"
  requires "Todoist.app"
  requires "Spectacle.app"
  requires "RescueTime.app"
  requires "Postgres.app"
  requires "Pocket.app"
  requires "OpenOffice.app"
  requires "Google Chrome.app"
  requires "GIMP.app"
  requires "Evernote.app"
  requires "Atom.app"
  requires "VirtualBox.app"
end

# OS X Settings

dep "set-icon-size" do
  met? {
    shell("defaults read com.apple.dock tilesize") == "41"
  }

  meet {
    shell("defaults write com.apple.dock tilesize -int 41")
    shell("killall -HUP Dock")
  }
end

# Install everything...

dep "all-osx-settings" do
  requires "set-icon-size"
end
