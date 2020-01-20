dep 'xcode' do
  met? { shell("xcode-select -p") == "/Applications/Xcode.app/Contents/Developer" }
  meet { shell 'mas install 497799835' }
end

dep 'xcode-cli-tools' do
  met? { shell? "gcc --version" }
  meet {
    shell 'xcode-select –-install'
    shell 'sudo xcodebuild -license accept'
  }
end

dep 'install-xcode' do
  requires 'xcode'
  requires 'xcode-cli-tools'
end

