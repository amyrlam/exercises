# https://github.com/creationix/nvm
export NVM_DIR="/Users/alam/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# http://code-worrier.com/blog/autocomplete-git/
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# http://mfitzp.io/article/add-git-branch-name-to-terminal-prompt-mac/
parse_git_branch() {
  git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/"
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Ember shortcuts
alias es="ember serve"
alias etsf="ember test --server --filter"

# https://github.com/postmodern/chruby#configuration
# http://ryanbigg.com/2015/06/mac-os-x-ruby-ruby-install-chruby-and-you
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# Google Cloud SDK, https://cloud.google.com/sdk/downloads
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alam/google-cloud-sdk/path.bash.inc' ]; then source '/Users/alam/google-cloud-sdk/path.bash.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/alam/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/alam/google-cloud-sdk/completion.bash.inc'; fi
