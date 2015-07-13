# Install Xcode

dep "install-xcode" do
  met? { shell("xcode-select -p") == "/Applications/Xcode.app/Contents/Developer" }
  meet { unmeetable! "Please install xcode" }
end

# Install Xcode's command line tools

dep "install-command-line-tools" do
  met? { shell? "gcc --version" }
  meet { unmeetable! "Run 'xcode-select --install' to install gcc"}
end

# Configure git

dep "install-and-configure-git" do
  requires "install-git"
  requires "configure-git"
end

# Install Homebrew (Babushka should already know how to do this, but just in case...)

dep "install-brew" do
  met? { shell? "brew help" }
  meet { shell "ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'" }
end

# Install Ruby with RVM

dep "install-rvm" do
  met? { "~/.rvm/scripts/rvm".p.file? }
  meet { shell '\curl -L https://get.rvm.io | bash -s stable --ruby' }
end

# Update RVM and gems

dep "update-rvm-and-gems" do
  met? { shell?("gem -v") && shell("gem -v") >= "2.4.8" }
  meet {
    shell "rvm get stable --autolibs=enable"
    shell "rvm install ruby"
    shell "rvm --default use ruby-2.2.2"
    shell "gem update --system"
  }
end

# Dont install documentation to speed up installs of gems

dep "no-documentation" do
  met? { shell? "grep 'gem: --no-document' ~/.gemrc" }
  meet { shell "echo 'gem: --no-document' >> ~/.gemrc" }
end

# Install bundler

dep "install-bundler" do
  met? { shell? "bundler help" }
  meet { shell "gem install bundler" }
end

# Install Nokogiri

dep "install-nokogiri" do
  met? { shell? "gem list | grep 'nokogiri'" }
  meet { shell "gem install nokogiri" }
end

# Install latest Rails and create gemsets

dep "install-rails" do
  met? { shell?("rails -v") && shell("rails -v") >= "Rails 4.2.3" }
  meet {
    shell "rvm use ruby-2.2.2@rails4.2 --create"
    shell "gem install rails"
  }
end

# Create a rails folder

dep "create-rails-projects-folder" do
  met? { "~/Rails".p.dir? }
  meet { log_shell "Creating ~/Rails", "mkdir ~/Rails" }
end

# Install ruby and all dependencies

dep "install-ruby-and-dependencies" do
  requires "install-xcode"
  requires "install-command-line-tools"
  requires "install-and-configure-git"
  requires "install-brew"
  requires "install-rvm"
  requires "update-rvm-and-gems"
  requires "no-documentation"
  requires "install-bundler"
  requires "install-nokogiri"
  requires "install-rails"
  requires "create-rails-projects-folder"
end
