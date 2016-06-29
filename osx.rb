# OSX apps go here, Evernote, Slack, Todoist etc...

dep "iTerm.app" do
  source "https://iterm2.com/downloads/stable/iTerm2-2_1_1.zip"
end

dep "Dropbox.app" do
  met? { "/Applications/Dropbox.app".p.exist? }
  meet { unmeetable! "Install Dropbox via the App Store." }
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

dep "Time Out.app" do
  source "http://www.dejal.com/download/?prod=timeout&vers=1.7.1&lang=en&op=getnow&ref=timeout"
end

dep "VeraCrypt.app" do
  met? { "/Applications/VeraCrypt.app".p.exist? }
  meet {
    source "http://sourceforge.net/projects/osxfuse/files/osxfuse-2.8.0/osxfuse-2.8.0.dmg/download"
    source "https://veracrypt.codeplex.com/downloads/get/1468025"
  }
end

dep "Sync.app" do
  source "https://www.sync.com/download/apple/Sync.dmg"
end

#dep "FasttrackDrivers" do
#  met? { false }
#  meet { source "http://akmedia.digidesign.com/support/compressed/Fast_Track_Pro_Driver_1_9_5_Mac_83635.dmg?ns=1" }
#end

#dep "PreyProject" do
#  met? { false }
#  meet { source "https://prey-releases.s3.amazonaws.com/node-client/1.4.1/prey-mac-1.4.1-x86.pkg" }
#end

dep "VirtualBox.app" do
  source "http://download.virtualbox.org/virtualbox/5.0.8/VirtualBox-5.0.8-103449-OSX.dmg"
end

dep "Transmission.app" do
  source "http://download.transmissionbt.com/files/Transmission-2.84.dmg"
end

dep "VLC.app" do
  source "http://get.videolan.org/vlc/2.2.1/macosx/vlc-2.2.1.dmg"
end

dep "Messenger.app" do
  source "https://github.com/Aluxian/Facebook-Messenger-Desktop/releases/download/v1.4.3/Messenger.dmg"
end

#dep "PomoDone.app" do
#  source "http://app.pomodoneapp.com/PomoDone.dmg"
#end

#dep "HerokuToolbelt" do
#  met? { false }
#  meet { source "https://toolbelt.heroku.com/download/osx" }
#end

dep "DNSCrypt Menubar.app" do
  source "https://github.com/alterstep/dnscrypt-osxclient/releases/download/1.0.10/dnscrypt-osxclient-1.0.10.dmg"
end

dep "SpoofMac" do
  met? { false }
  meet { shell('pip install SpoofMAC') }
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
  requires "Time Out.app"
  requires "VeraCrypt.app"
  requires "Sync.app"
  #requires "FasttrackDrivers"
  #requires "PreyProject"
  requires "VirtualBox.app"
  requires "Transmission.app"
  requires "VLC.app"
  requires "Messenger.app"
  #requires "PomoDone.app"
  #requires "HerokuToolbelt"
  requires "DNSCrypt Menubar.app"
  requires "SpoofMac"
end
