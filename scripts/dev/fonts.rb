dep 'install nerd font' do
  met? { shell? "brew list font-meslo-lg-nerd-font" }
  meet { shell "brew install --cask font-meslo-lg-nerd-font" }
end

dep "fonts" do
  requires 'install nerd font'
end
