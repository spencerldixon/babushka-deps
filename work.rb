# Install everything for the work environment

dep "work" do
  requires "all-packaged-apps"
  requires "all-osx-apps"
  requires "all-osx-settings"
  requires "install-fonts"
  requires "install-ruby-and-dependencies"
  requires "heroku-setup"
end
