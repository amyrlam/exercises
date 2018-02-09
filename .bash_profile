# https://github.com/creationix/nvm
export NVM_DIR="/Users/alam/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# http://code-worrier.com/blog/autocomplete-git/
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# http://mfitzp.io/article/add-git-branch-name-to-terminal-prompt-mac/
parse_git_branch() {
  git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/"
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# ember shortcuts
alias es="ember serve"
alias etsf="ember test --server --filter"

# https://github.com/postmodern/chruby#configuration
# http://ryanbigg.com/2015/06/mac-os-x-ruby-ruby-install-chruby-and-you
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
