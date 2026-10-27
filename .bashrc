# ~/.bashrc

PROMPT_COMMAND='PS1_CMD1=$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR == 1{ split($2, a," ");print a[1]}'"'"')';
PS1='\A \u@${PS1_CMD1} $? ${PWD} \$ '

export EDITOR=nvim

alias v='nvim'
alias rr='rm -rv'
alias cat='bat'
alias ls='ls --color=auto'
alias la='ls -la --color=auto'
alias ll='ls -l --color=auto'
