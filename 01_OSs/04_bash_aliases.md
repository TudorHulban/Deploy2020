```sh
alias r2='rm -rf *'
alias bb='git branch'
alias ba='git branch -a'
alias glo='git log --pretty=format:"%h - %an, %ar : %s" -10'

alias mvf='find -name *.mp4 -exec mv {} . \;'
alias sec='gosec -no-fail ./... 2>&1 | tee ~/ram/sast-gosec.log'
```
