# Download and authenticate heroku toolbelt

dep "heroku-toolbelt" do
  met? { shell? 'bash -c heroku'}
  meet { shell "brew install heroku/brew/heroku" }
end

# Install heroku

dep "heroku-setup" do
  requires "heroku-toolbelt"
end
