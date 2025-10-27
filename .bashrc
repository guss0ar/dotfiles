#
# ~/.bashrc
#

#viadagem
PS1='\[\e[92;1m\]\u@\h\[\e[22m\] \[\e[96;1m\]\w\[\e[22m\] \[\e[0;1m\]\$\[\e[0m\] '

#coisas importantes
export EDITOR=nvim
export PATH=~/scripts:~/appimage:$PATH

#aliases
alias v='nvim'

alias ls='ls --color=auto'
alias la='ls -la --color=auto'
alias ll='ls -l --color=auto'

alias mkdwm='cd ~/git/dwm && sudo make clean install; cd -'
alias mkst='cd ~/git/st && sudo make clean install; cd -'
alias edwm='sudo nvim ~/git/dwm/config.h'

alias java21='/usr/lib/jvm/java-21-openjdk/bin/java'
alias java17='/usr/lib/jvm/java-17-openjdk/bin/java'
alias java11='/usr/lib/jvm/java-11-openjdk/bin/java'
alias java8='/usr/lib/jvm/java-8-openjdk/jre/bin/java'
