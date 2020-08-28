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

# Set up my prompt the way I like it. Basically this abbreviates the CWD in the prompt
# to just the first letter of each directory name before the current directory, then the
# full name of the current directory.
PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'

# Set the actual command prompt with nice color coding.
#PS1='\u@\h:${PS1X} $ '
PS1="\e[1;31m\u@\e[1;36m\h:\e[1;35m${PS1X} \e[0m$ "
