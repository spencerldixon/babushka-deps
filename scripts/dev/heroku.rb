# Download and install heroku toolbelt

dep 'heroku-toolbelt' do
  met? { shell? 'bash -c heroku'}
  meet { shell 'brew install heroku/brew/heroku' }
end

dep 'heroku-accounts' do
  met? { shell? 'heroku accounts' }
  meet { shell 'heroku plugins:install heroku-accounts' }
end

# Install heroku

dep 'heroku' do
  requires 'heroku-toolbelt'
  requires 'heroku-accounts'
end
