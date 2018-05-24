# https://github.com/creationix/nvm
export NVM_DIR="/Users/alam/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# http://code-worrier.com/blog/autocomplete-git/
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# http://mfitzp.io/article/add-git-branch-name-to-terminal-prompt-mac/
# https://github.com/rickycodes/moonmoji#in-your-bash
parse_git_branch() {
  git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/"
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $(moonmoji) $ "

# Ember shortcuts
alias es="ember serve"
alias etsf="ember test --server --filter"

# Google Cloud SDK, https://cloud.google.com/sdk/downloads
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alam/google-cloud-sdk/path.bash.inc' ]; then source '/Users/alam/google-cloud-sdk/path.bash.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/alam/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/alam/google-cloud-sdk/completion.bash.inc'; fi

# https://github.com/jessica-jordan/whats-new-in-emberland
export GITHUB_API_KEY=<redacted>

# https://github.com/fastly/App#installation
export PATH=$HOME/src/App/bin:$PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# try switching to rvm?
# https://github.com/postmodern/chruby#configuration
# http://ryanbigg.com/2015/06/mac-os-x-ruby-ruby-install-chruby-and-you
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# not sure what this is for
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

