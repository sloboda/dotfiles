source ~/.bashrc
### Get homebrew first in path
### Cisco: add python3
export PATH="/opt/homebrew/bin:/Users/daslobod/Library/Python/3.9/bin:$PATH:/Users/daslobod/bin:$PATH"

### use tmux integration with iterm2 shell integration
# https://www.iterm2.com/documentation-tmux-integration.html
# https://gitlab.com/gnachman/iterm2/-/wikis/tmux-Integration-Best-Practices
export ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=YES
### https://iterm2.com/documentation-shell-integration.html
#source ~/.iterm2_shell_integration.bash
#PS1='\[\e[32m\u\] \[\e[95m\t\] \[\e[36m\W\] \[\e[93m\]$(git branch 2>/dev/null | sed -n "s/* \(.*\)/\1 /p")\[\e[91m\]\[\e[0m\]\n\[$(iterm2_prompt_mark)\]$ '
### add path for iterm2 utilities
export PATH=${PATH}:/Users/daslobod/.iterm2

# go and golang
# From https://jimkang.medium.com/install-go-on-mac-with-homebrew-5fa421fc55f5
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
. "$HOME/.cargo/env"
export PATH="/opt/homebrew/sbin:$PATH"
