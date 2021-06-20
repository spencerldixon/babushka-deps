# Babushka 💃
### Simple, automated MacBook installation and configuration

## Installation

```sh
sudo sh -c "`curl https://babushka.me/up`"
sudo babushka babushka
```

To install everything...

```sh
babushka spencerldixon:full
```

To install ONLY development stuff (use for loaned machines)

```sh
babushka spencerldixon:dev
```

Put the kettle on, kick back and wait for Babushka to finish installing everything!

## Security settings

Security tweaks based on: ```https://github.com/drduh/OS-X-Security-and-Privacy-Guide```

## Babushka Explained

```
scripts/
  dev/ - Anything development environment related goes here
  music/ - Ableton and plugins go here
  osx/ - System wide OSX config goes here
  apps/ - Application installations go here
```

Each file can contain smaller deps, but will have a big dep at the end combining them that follows the name of the file. For example. `apps.rb` will have a runnable dep calls `apps` which will in turn, run all the individual app deps`.

You can rerun the deps and fetch any updates to the repo with the `--update` flag like so: `babushka spencerldixon:deps --update`
