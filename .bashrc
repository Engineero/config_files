# If not running interactively, don't do anything.
#[[ "$-" != *i* ]] && return
case $- in
  *i*) ;;
    *) return;;
esac

# Use vi command line interface.
set -o vi

# Aliases #
# Some people use a different file for aliases
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# Set up my prompt the way I like it.
PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'

PS1='\e[1;31\u@\e[1;36\h:\e[1;35${PS1X} \e[0$ '

# Environment variables.
export GREP_OPTIONS='--color=auto'
