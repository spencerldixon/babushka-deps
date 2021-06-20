dep "set-user-name" do
  met? { shell("git config user.name") == "Spencer Dixon" }
  meet { shell("git config --global user.name 'Spencer Dixon'")}
end

dep "set-email" do
  met? { shell("git config user.email") == "spencerlloyddixon@gmail.com" }
  meet { shell("git config --global user.email 'spencerlloyddixon@gmail.com'") }
end

dep "set-core-editor" do
  met? { shell("git config core.editor") == "vim" }
  meet { shell("git config --global core.editor 'vim'") }
end

dep "set-push-default" do
  met? { shell("git config push.default") == "simple" }
  meet { shell("git config --global push.default simple") }
end

dep "set-global-gitignore" do
  # Update global gitignore regardless
  shell("cp ~/.babushka/sources/spencerldixon/.gitignore_global ~/.gitignore_global")
  shell("git config --global core.excludesfile ~/.gitignore_global" )
end

# Configure git

dep 'git-preferences' do
  requires "set-user-name"
  requires "set-email"
  requires "set-core-editor"
  requires "set-push-default"
  requires "set-global-gitignore"
end
