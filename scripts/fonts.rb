dep 'create fonts directory' do
  met? {
    "~/Library/Fonts".p.dir?
  }
  meet {
    log_shell "Creating ~/Library/Fonts", "mkdir ~/Library/Fonts"
  }
end

fonts = [
  {
    ttf_filename: "MesloLGM-DZ-Regular.ttf",
    source: 'http://github.com/downloads/andreberg/Meslo-Font/Meslo%20LG%20DZ%20v1.0.zip'
  },
  {
    ttf_filename: 'Menlo-for-Powerline.ttf',
    source: 'https://github.com/abertsch/Menlo-for-Powerline/blob/master/Menlo%20for%20Powerline.ttf'
  }
]

dep 'install meslo' do
  fonts.each do |font|
    met? { "~/Library/Fonts/#{font[:ttf_filename]}".p.exists? }
    meet { shell "wget -O ~/Library/Fonts/#{font[:ttf_filename]} #{font[:source]}" }
  end
end


dep "install-fonts" do
  requires 'create fonts directory'
  requires 'install meslo'
end
