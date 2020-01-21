# Add ssh config

dep 'generate-ssh-key' do
  met? { system('ls -al ~/.ssh') }
  meet {
    system 'ssh-keygen -t rsa -b 4096 -C "spencerlloyddixon@gmail.com"'

    system 'pbcopy < ~/.ssh/id_rsa.pub'
    puts "💻 Your new SSH key has been copied to your clipboard"
  }
end

