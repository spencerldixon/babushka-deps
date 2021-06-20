# Install...

# - Kontakt
# - GGD Modern & Massive
# - NDSP Plini
# - NDSP Parallax
# - Spitfire Labs

dep 'native-access' do
  met? { shell 'brew cask list native-access' }
  meet { shell 'brew cask install native-access' }
end

dep 'spitfire-audio' do
  met? { shell 'brew cask list spitfire-audio' }
  meet { shell 'brew cask install spitfire-audio' }
end

dep 'music-plugins' do
  requires 'native-access'
  requires 'spitfire-audio'
end
