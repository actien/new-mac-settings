# For organizing bash
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done

##########################################################################################
# Exports
##########################################################################################

export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages
export PATH=/usr/local/sbin:/usr/local/bin:/Users/atien/bin:$PATH
export ANT_OPTS='-Xmx8G'
export EDITOR=vi

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/mysql/bin
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

##########################################################################################
# Aliases
##########################################################################################

# Basic Utility
alias ls='ls -GFh'
alias ll='ls -la'
alias vi='vim'

alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
alias prettyjson='python -m json.tool'

alias chromeForceGpu='open /Applications/Google\ Chrome.app/ --args --force_discrete_gpu=0'

# Git prompt
source ~/.git-prompt.sh

# Unset LANG before running bash completion
unset LANG
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

