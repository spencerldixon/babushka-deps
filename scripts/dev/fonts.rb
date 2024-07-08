dep 'install nerd font' do
  met? { false }
  meet { shell "brew install --cask font-meslo-lg-nerd-font" }
end

dep "fonts" do
  requires 'install nerd font'
end
