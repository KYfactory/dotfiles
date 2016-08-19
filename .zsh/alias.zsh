alias la='ls -la'
alias lat='pwd;find . | sort | sed '\''1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/| /g'\'''

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'


# ---------- git ----------
alias gst='git status'
alias gd='git diff'

alias glog='git log --graph --date=short --decorate=short --pretty=format:'\''%Cgreen%h %Creset%cd %Cblue%cn %Cred%d %Creset%s'\'''

alias gb='git branch'
alias gbd='git branch -d'

alias grp='git remote prune'

alias gco='git checkout'
alias gcob='git checkout -b'

alias ga='git add'
alias gc='git commit'

alias gps='git push'
