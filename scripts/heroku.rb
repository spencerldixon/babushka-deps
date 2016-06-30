# Download and authenticate heroku toolbelt

dep "heroku-toolbelt" do
  met? { shell? 'bash -c heroku'}
  meet { source "https://toolbelt.heroku.com/download/osx" }
end

# Install heroku

dep "heroku-setup" do
  requires "heroku-toolbelt"
end
