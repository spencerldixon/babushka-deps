dep "Lemur Editor.app" do
  source "https://liine.net/assets/files/lemur/Lemur-Installer-5.2.2.dmg"
end

dep "personal" do
  requires "Lemur Editor.app"

  puts "Install Ableton"
  puts "Install Reason"
  puts "Install Addictive Drums"
  puts "Install Waves Plugins"
  puts "Install Guitar Pro 6"
  puts "Install Guitar Rig 5"
  puts "Set up firefox"
end
