# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto -F'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias casm="nasm -f elf32"
alias lasm="ld -m elf_i386"

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'
alias ll='ls -Alh'
alias li='ll -i'
alias pylint='python3 -m pylint'

alias admin='tmux new -s admin -n ADMINISTRATOR \; new-window -n EDITOR \; new-window -n DEVELOPER;'
alias dev='tmux new -s developer -n TESTING \; new-window -n DAEMON \; new-window -n DEVELOPER\; new-window -n DATABASE'
#Add hub as an alias for git hub
#So that git and git hub all have access to each other
#eval "$(hub alias -s)"
alias __git=hub

alias sv="source ~/.virtualevn/bin/activate"
