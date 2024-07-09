# Install Ruby with RVM

dep 'rvm' do
  met? { "~/.rvm/scripts/rvm".p.file? }
  meet { shell '\curl -L https://get.rvm.io | bash -s stable' }
end

# Update RVM and gems

dep 'update-rvm-and-gems' do
  met? { shell?("gem -v") && shell("gem -v") >= "3.0.0" }
  meet {
    shell "rvm get stable --autolibs=enable"
    shell "rvm install ruby --latest"
    shell "rvm use --latest --default"
    shell "gem update --system"
  }
end

# Dont install documentation to speed up installs of gems

dep "no-documentation" do
  met? { shell? "grep 'gem: --no-document' ~/.gemrc" }
  meet { shell "echo 'gem: --no-document' >> ~/.gemrc" }
end

# Install bundler

dep "bundler" do
  met? { system "bundle help" }
  meet { shell "sudo gem install bundler" }
end

# Install Nokogiri

dep "nokogiri" do
  met? { shell? "gem list | grep 'nokogiri'" }
  meet { shell "gem install nokogiri" }
end

# Install latest Rails and create gemsets

dep "rails" do
  met? { shell?("rails -v") && shell("rails -v") >= "Rails 6.0.0" }
  meet {
    shell "gem install rails"
  }
end

# Create a rails folder

dep "create-rails-projects-folder" do
  met? { "~/Rails".p.dir? }
  meet { log_shell "Creating ~/Rails", "mkdir ~/Rails" }
end

dep "mise" do
  met? { shell? "~/.local/bin/mise --version" }
  meet { shell "curl https://mise.run | sh" }
end

# Install ruby and all dependencies

dep 'ruby' do
  # requires "rvm"
  # requires "update-rvm-and-gems"
  # requires "no-documentation"
  # requires "bundler"
  # requires "nokogiri"
  # requires "rails"
  requires "mise"
  requires "create-rails-projects-folder"
end
