# bash customization
export BASH_CONF="bashrc"
### Get homebrew first in path
export PATH="/usr/local/bin:$PATH"
### remember history
HISTSIZE=10000
HISTFILESIZE=20000
### customize prompt
#  https://www.booleanworld.com/customizing-coloring-bash-prompt/
#PS1='\[\e[32m\u\] \[\e[36m\w\] \[\e[33m\]\[\e[1m\]$ \[\e[0m\]'
#PS1='\u \w $(git branch 2>/dev/null | sed -n "s/* \(.*\)/\1 /p")$ '
#PS1='\[\e[32m\u\] \[\e[95m\t\] \[\e[36m\W\] \[\e[93m\]$(git branch 2>/dev/null | sed -n "s/* \(.*\)/\1 /p")\[\e[91m\]\[\e[0m\]\n\[$(iterm2_prompt_mark)\]$ '
#PS1='\[\e[32m\u\] \[\e[95m\t\] \[\e[36m\W\] \[\e[93m\]$(git branch 2>/dev/null | sed -n "s/* \(.*\)/\1 /p")\[\e[91m\]\[\e[0m\]\n$ '
### unsuccessful attempt to get iTerm2 badge working on Profile when target host does not have iTerm2 shell integration installed.
#PS1='\[\e[32m\u\]\[\e[0m\]@\[\e[0m\]\[\e[34m\h\] \[\e[95m\t\] \[\e[36m\W\] \[\e[93m\]$(git branch 2>/dev/null | sed -n "s/* \(.*\)/\1 /p")\[\e[91m\]\[\e[0m\]\n$ '

### add aliases
alias digss='dig +short +search'
# https://ma.ttias.be/pretty-git-log-in-one-line/
alias gll="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias tf="/usr/local/bin/terraform"
alias tfaa="/usr/local/bin/terraform apply -auto-approve"   # Don't ask me

### Add git functions
### https://stackoverflow.com/a/23328996
### git add + commit + push in one step
function loggit() {
    # End goal is a commit message similar to:
    # Logbook commit for 20180315-1653 PDT
    NOW=`date '+%Y%m%d-%H%M %Z'` 
    git add .
    git commit -a -m "Logbook commit for $NOW"
    git push
}

### Set bash prompt
### https://superuser.com/a/886247
# $ settitle wash.local
# or set path 
function settitle() {
      export PS1="\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n$ "
      echo -ne "\e]0;$1\a"
}
function settitlepath() {
      export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n$ "
}
### use tmux integration with iterm2 shell integration
# https://www.iterm2.com/documentation-tmux-integration.html
# https://gitlab.com/gnachman/iterm2/-/wikis/tmux-Integration-Best-Practices
export ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=YES
### https://iterm2.com/documentation-shell-integration.html
source ~/.iterm2_shell_integration.bash
PS1='\[\e[32m\u\] \[\e[95m\t\] \[\e[36m\W\] \[\e[93m\]$(git branch 2>/dev/null | sed -n "s/* \(.*\)/\1 /p")\[\e[91m\]\[\e[0m\]\n\[$(iterm2_prompt_mark)\]$ '
### add path for iterm2 utilities
export PATH=${PATH}:/Users/david/.iterm2


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/david/google-cloud-sdk/path.bash.inc' ]; then . '/Users/david/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/david/google-cloud-sdk/completion.bash.inc' ]; then .  '/Users/david/google-cloud-sdk/completion.bash.inc'; fi

# What does java need today?
export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home

