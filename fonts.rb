dep 'user font dir exists' do
  met? {
    "~/Library/Fonts".p.dir?
  }
  meet {
    log_shell "Creating ~/Library/Fonts", "mkdir ~/Library/Fonts"
  }
end

meta 'font' do
  accepts_list_for :source
  accepts_list_for :extra_source
  accepts_list_for :ttf_filename

  template {
    requires 'user font dir exists'
    prepare {
      #setup_source_uris
    }
    met? {
      "~/Library/Fonts/#{ttf_filename.first}".p.exists?
    }
    meet {
      sources.each do |uri|
        Resource.extract(uri) { Dir.glob("*.tt?"){|font| log_shell("Installing #{font}", "cp #{font} ~/Library/Fonts") } }
      end
    }
  }
end

dep 'meslo.font' do
  source 'http://github.com/downloads/andreberg/Meslo-Font/Meslo%20LG%20DZ%20v1.0.zip'
  ttf_filename "MesloLGM-DZ-Regular.ttf"
end

dep 'menlo for powerline.font' do
  source 'https://gist.github.com/raw/1627888/c4e92f81f7956d4ceaee11b5a7b4c445f786dd90/Menlo-ForPowerline.ttc.zip'
  ttf_filename 'Menlo-ForPowerline.ttc'
end

dep "install-fonts" do
  requires 'user font dir exists'
  requires 'meslo.font'
  requires 'menlo for powerline.font'
end
