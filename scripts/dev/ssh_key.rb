# Add ssh config

dep 'ssh_key' do
  met? { system('ls -al ~/.ssh') }
  meet {
    system 'ssh-keygen -t rsa -b 4096 -C "spencerlloyddixon@gmail.com"'
    system 'pbcopy < ~/.ssh/id_rsa.pub'
    system 'eval "$(ssh-agent -s)"'
    system 'cp ~/.babushka/sources/spencerldixon/.ssh_config ~/.ssh/config'
    system 'ssh-add -K ~/.ssh/id_rsa'

    puts "💻 Your new SSH key has been copied to your clipboard"
  }
end

