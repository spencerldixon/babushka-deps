# Sets up development environment ONLY
# Use for a minimalist setup on leased laptops

dep 'dev' do
  requires 'homebrew'
  requires 'xcode'
  requires 'ruby'
  requires 'git_preferences'
  requires 'fonts'
  requires 'zsh'
  requires 'dotfiles'
  requires 'scm_breeze'
  requires 'heroku'
  requires 'apps-apps-minimal'

  puts "🎉 Dev environment installed"
end

# Installs dev environment and everything else, use for personal machines

dep 'full' do
  # Install dev environment first
  requires 'dev'

  # Install additional deps
  requires 'apps-apps-full'

  # Installs ableton and music stuff
  requires 'music-apps'
  requires 'music-plugins'

  # Sets up OSX preferences
  requires 'osx-osx'

  # Finished messages and checklist
  requires 'finished-messages'
end

