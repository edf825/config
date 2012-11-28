export HISTCONTROL=ignoreboth

export PATH=$HOME/bin:$HOME/.java/jdk/bin:$PATH:$HOME/android/android-sdk-linux/platform-tools:$HOME/android/android-sdk-linux/tools

export GECKO_PATH=$HOME/src/gonk-central
export GECKO_OBJDIR=$HOME/build/gonk

export CCACHE_DIR=$HOME/.ccache

alias ls='ls --color -F'

eval `dircolors $HOME/.dircolors`

# Search aliases shamelessly stolen from Randall Jesup
alias cfiles='find . -path "*CVS" -prune -o -path ".svn" -prune -o -path "*.hg" -prune -o -name "*.[c|C]*" -a -type f -a -not -name "*~"'
alias hfiles='find . -path "*CVS" -prune -o -path ".svn" -prune -o -path "*.hg" -prune -o -name "*.h" -a -type f -a -not -name "*~"'
alias chfiles='find . -path "*CVS" -prune -o -path ".svn" -prune -o -path "*.hg" -prune -o -name "*.[c|C|h]*" -a -type f -a -not -name "*~"'
alias ifiles='find . -path "*CVS" -prune -o -path ".svn" -prune -o -path "*.hg" -prune -o -name "*.idl" -a -type f -a -not -name "*~"'
alias mfiles='find . -path "*CVS" -prune -o -path ".svn" -prune -o -path "*.hg" -prune -o -type f -a -not -name "*~" -name "GNUmakefile" -or -name "[m|M]akefile*" -or -name "*.mk"'
alias jfiles='find . -path "*CVS" -prune -o -path ".svn" -prune -o -path "*.hg" -prune -o -name "*.java" -a -type f -a -not -name "*~"'
alias jsfiles='find . -path "*CVS" -prune -o -path ".svn" -prune -o -path "*.hg" -prune -o -name "*.js" -a -type f -a -not -name "*~"'
alias cssfiles='find . -path "*CVS" -prune -o -path ".svn" -prune -o -path "*.hg" -prune -o -name "*.css" -a -type f -a -not -name "*~"'
alias xulfiles='find . -path "*CVS" -prune -o -path ".svn" -prune -o -path "*.hg" -prune -o -name "*.xul" -a -type f -a -not -name "*~"'
alias gfiles='find . -path "*CVS" -prune -o -path ".svn" -prune -o -path "*.hg" -prune -o -name "*.gyp*" -a -type f -a -not -name "*~"'
alias cfind='cfiles | xargs grep $@'
alias hfind='hfiles | xargs grep $@'
alias chfind='chfiles | xargs grep $@'
alias ifind='ifiles | xargs grep $@'
alias mfind='mfiles | xargs grep $@'
alias jfind='jfiles | xargs grep $@'
alias jsfind='jsfiles | xargs grep $@'
alias cssfind='cssfiles | xargs grep $@'
alias xulfind='xulfiles | xargs grep $@'
alias gfind='gfiles | xargs grep $@'
alias cdiff='diffdir $@ `cfiles`'
alias hdiff='diffdir $@ `hfiles`'
alias chdiff='diffdir $@ `chfiles`' 

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
