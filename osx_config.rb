# OS X Settings

dep "set-icon-size" do
  met? { shell("defaults read com.apple.dock tilesize") == "41" }
  meet {
    shell("defaults write com.apple.dock tilesize -int 41")
    shell("killall -HUP Dock")
  }
end

dep "set-keyrepeat" do
  met? { shell("defaults read ~/Library/Preferences/.GlobalPreferences.plist KeyRepeat") == "2" }
  meet { shell "defaults write ~/Library/Preferences/.GlobalPreferences.plist KeyRepeat -int 2" }
end

dep "set-initial-key-repeat" do
  met? { shell("defaults read ~/Library/Preferences/.GlobalPreferences.plist InitialKeyRepeat") == "15"}
  meet { shell "defaults write ~/Library/Preferences/.GlobalPreferences.plist InitialKeyRepeat -int 15" }
end

dep "set-dark-mode" do
  met? { shell("defaults read ~/Library/Preferences/.GlobalPreferences.plist AppleInterfaceStyle") == "Dark"}
  meet { shell "defaults write ~/Library/Preferences/.GlobalPreferences.plist AppleInterfaceStyle -string Dark" }
end

dep "set-background" do
  meet {
    shell "curl -o ~/Pictures/elliot.jpg http://imgh.us/elliotswallpaper.jpg"
    shell "sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db \"update data set value = '~/Pictures/elliotswallpaper.jpg'\" && killall Dock  "
  }
end

dep "evict-filevault" do
  # Evict Filevault keys from memory for security
  meet {
    shell "sudo pmset -a destroyfvkeyonstandby 1"
    shell "sudo pmset -a hibernatemode 25"
  }
end

dep "enable-firewall" do
  # Enable firewall, logging, stealth mode and disable access for signed software"
  meet {
    shell "sudo defaults write /Library/Preferences/com.apple.alf globalstate -bool true"
    shell "sudo defaults write /Library/Preferences/com.apple.alf loggingenabled -bool true"
    shell "sudo defaults write /Library/Preferences/com.apple.alf stealthenabled -bool true"
    shell "sudo defaults write /Library/Preferences/com.apple.alf allowsignedenabled -bool false"
  }
end

dep "disable-captive-portal" do
  # Can be leveraged for potential attack
  meet {
    shell "sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.captive.control Active -bool false"
  }
end

dep "disable-save-to-icloud" do
  # Disable saving files to iCloud by default
  meet {
    shell "defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false"
  }
end


# Install everything...

dep "all-osx-settings" do
  requires "set-icon-size"
  requires "set-keyrepeat"
  requires "set-initial-key-repeat"
  requires "set-dark-mode"
  requires "set-background"
  requires "evict-filevault"
  requires "enable-firewall"
  requires "disable-save-to-icloud"
end
