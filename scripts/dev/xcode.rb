dep 'xcode-cli-tools' do
  met? { shell? "gcc --version" }
  meet {
    shell 'xcode-select –-install'
    shell 'sudo xcodebuild -license accept'
  }
end

dep 'xcode' do
  requires 'xcode-cli-tools'
end

