# Install git

dep "install-git" do
  met? { shell? "git help" }
  meet { requires "git.bin" }
end

# Configure git methods

dep "set-user-name" do
  met? { shell("git config user.name") == "Spencer Dixon" }
  meet { shell "git config --global user.name 'Spencer Dixon'" }
end

dep "set-email" do
  met? { shell("git config user.email") == "spencerlloyddixon@gmail.com" }
  meet { shell "git config --global user.email 'spencerlloyddixon@gmail.com'" }
end

dep "set-core-editor" do
  met? { shell("git config core.editor") == "vim" }
  meet { shell "git config --global core.editor 'vim'" }
end

dep "set-push-default" do
  met? { shell("git config push.default") == "simple" }
  meet { shell "git config --global push.default simple" }
end

dep "set-global-gitignore" do
  met? { File.exist?("~/.gitignore_global") }
  meet { 
    shell "cp ~/.babushka/sources/spencerldixon/gitignore_global.txt ~/.gitignore_global"
    shell "git config --global core.excludesfile ~/.gitignore_global" 
    }
end

# Configure git

dep "configure-git" do
  requires "set-user-name"
  requires "set-email"
  requires "set-core-editor"
  requires "set-push-default"
  requires "set-global-gitignore"
end
