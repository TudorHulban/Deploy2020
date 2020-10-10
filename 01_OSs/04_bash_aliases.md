## Debian
See commands with `alias`.
```sh
alias ra='cd ~/ram'

alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'

alias r2='rm -rf *'

alias bb='git branch'
alias ba='git branch -a'
alias glo='git log --pretty=format:"%h - %an, %ar : %s" -10'

alias mvf='find -name *.mp4 -exec mv {} . \;'
alias sec='gosec -no-fail ./... 2>&1 | tee ~/ram/sast-gosec.log'

alias depl='git clone git@github.com:TudorHulban/Deploy2020.git'
```
For root aliases should go in `~/.bashrc`.

## CentOS
Aliases should go in `~/.bashrc`.
