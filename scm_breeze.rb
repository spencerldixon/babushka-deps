dep "install-scm-breeze" do
  met? { "~/.scm_breeze".p.dir? }
  meet {
    shell "git clone git://github.com/ndbroadbent/scm_breeze.git ~/.scm_breeze"
    shell "~/.scm_breeze/install.sh"
    shell "source ~/.bashrc"
  }
end
