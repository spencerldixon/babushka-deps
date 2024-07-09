dep "scm_breeze" do
  met? { "~/.scm_breeze".p.dir? }
  meet {
    shell "mkdir ~/.scm_breeze"
    shell "git clone https://github.com/ndbroadbent/scm_breeze.git ~/.scm_breeze"
    shell "~/.scm_breeze/install.sh"
    shell "source ~/.zshrc"
  }
end
