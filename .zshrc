export LANG=ja_JP.UTF-8

FACE_CHAR=( "🍣" "🍺" "😂" "🤔" "🙏" "😇" "💃" "💪")
PROMPT='%F{cyan}[%n@%m:%f%F{yello}%~%f%F{cyan}]%f
%F{cyan}${FACE_CHAR[$RANDOM%${#FACE_CHAR[@]}+1]}<%f '

autoload -Uz vcs_info
autoload -Uz colors
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

RPROMPT=$RPROMPT'${vcs_info_msg_0_}%F{white}[$?]%f'


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
# export PATH

##
# Your previous /Users/kohei/.bash_profile file was backed up as /Users/kohei/.bash_profile.macports-saved_2017-04-17_at_12:27:01
##

# MacPorts Installer addition on 2017-04-17_at_12:27:01: adding an appropriate PATH variable for use with MacPorts.
# export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2017-04-17_at_12:27:01: adding an appropriate MANPATH variable for use with MacPorts.
# export MANPATH="/opt/local/share/man:$MANPATH"
# Finished adapting your MANPATH environment variable for use with MacPorts.


export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias emacs='/usr/local/Cellar/emacs/25.2/Emacs.app/Contents/MacOS/Emacs -nw'
# alias brew="env PATH=${PATH/\/Library\/Frameworks\/Python.framework\/Versions\/3.6\/bin:/} brew"
# alias brew="env PATH=${PATH/\/usr\/local\/lib:/} brew"
# export PATH="/usr/local/opt/libpcap/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
eval "$(pyenv init -)"

alias brew="env PATH=${PATH/\/Users\/${USER}\/\.pyenv\/shims:/} brew"
alias xem='python /Users/kohei/dev/python3/pythonprac/day4/xem.py'
# export PATH=$PATH:/Users/kohei/.nodebrew/current/bin
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi
export PGDATA=/usr/local/var/postgres
