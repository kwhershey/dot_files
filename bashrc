#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -n "$XTERM_VERSION" ] && transset-df -a .75>/dev/null

alias ls='ls -lh --color=auto'
alias ptex='pdflatex'
alias pacman='sudo pacman'
alias doris='ssh kyle@doris.dnsdynamic.net'
alias svim='sudo vim'
alias restart='sudo systemctl restart'
alias suod='sudo'

pdf() {
	pdflatex "$1";
	rm *.aux;
	rm *.log;
}


# PS1='[\u@\h \W]\$ '
export PS1="\[\e[0;32m\][\u@\h \W]\$ \[\e[m\]"

#searches through previous commands matching currently entered text
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

shopt -s autocd #cd if a directory is entered
alias c='clear'


export PERL_LOCAL_LIB_ROOT="/home/kyle/perl5";
export PERL_MB_OPT="--install_base /home/kyle/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/kyle/perl5";
export PERL5LIB="/home/kyle/perl5/lib/perl5/x86_64-linux-thread-multi:/home/kyle/perl5/lib/perl5";
export PATH="/home/kyle/perl5/bin:$PATH";
export CDPATH='/media'
if [ -f /etc/bash_completion ]; then
	    . /etc/bash_completion
fi

xhost +local:root > /dev/null 2>&1

complete -cf sudo

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano PKGBUILD'

# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
export NCURSES_NO_UTF8_ACS=1
