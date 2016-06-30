# Babushka 💃
### Simple, automated MacBook installation and configuration

MacBook dead? All that developer config lost? Babushka has your back. Simply connect to the internet, run a few lines of code at the terminal and Babushka sets about downloading all your applications and configuring everything just the way you like it, from Vim and Tmux, to Sync, Slack and Evernote...

To install run:

```
sh -c "`curl https://babushka.me/up`"
sudo babushka babushka
```

Then:

```babushka spencerldixon:work```

or...

```babushka spencerldixon:play```

Put the kettle on, kick back and wait for Babushka to finish installing everything!

## Security

Security tweaks based on: ```https://github.com/drduh/OS-X-Security-and-Privacy-Guide```

## Babushka Explained

Babushka scripts are contained in the `scripts/` directory and named accordingly. Any osx specific `.app` applications go in the `osx.rb` file. System specific stuff installed with brew go in `apps.rb`

You can rerun the deps and fetch any updates to the repo with the `--update` flag like so: `babushka spencerldixon:deps --update`
