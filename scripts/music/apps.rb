dep 'ableton' do
  met? { shell 'brew cask list ableton-live-suite' }
  meet { shell 'brew cask install ableton-live-suite' }
end

dep 'guitar pro' do
  met? { shell 'brew cask list guitar-pro' }
  meet { shell 'brew cask install guitar-pro' }
end

dep 'music-apps' do
  requires 'ableton'
  requires 'guitar pro'
end
