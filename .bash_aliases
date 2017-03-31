# Interactive operation...
alias rm='rm -i'                    # remove with confirmation
alias srm='srm -izv'                # securely remove with confirmation
# alias cp='cp -i'
# alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
alias grep='grep --color=auto'  # show differences in colour
# alias egrep='egrep --color=auto'  # show differences in colour
# alias fgrep='fgrep --color=auto'  # show differences in colour
alias ..='cd ..'  # back up one directory
alias rsync='rsync -vazu --progress --rsh="ssh -l ntoner"'  # easy rsync
alias ipython='ipython --pylab'  # start in a good environment for MATALB-like Pythoning!
alias notebook='jupyter notebook'  # start the ipython notebook environment which is awesome
alias shred='shred -zvu'  # secure overwrite and delete
#alias python2='/opt/local/bin/python2.7'  # start the MacPorts installation of Python 2.7
#alias python3='/opt/local/bin/python3.3'  # start the MacPorts installation of Python 3.3

# Network stuff
alias myip='dig @208.67.222.220 myip.opendns.com'  # determine external IP
alias wireless='sudo tcpdump -i en1 -s 0 -B 524288 -w'  # tcpdump for wireless connection (must give a filename *.pcap)
alias wired='sudo tcpdump -i en0 -s 0 -B 524288 -w'  # tcpdump for wired connection (must give a filename *.pcap)
alias vpn='sudo tcpdump -i ppp0 -s 0 -B 524288 -w'  # tcpdump for VPN connection (must give a filename *.pcap)
alias readtcpdump='tcpdump -s 0 -n -e -x -vvv -r'  # read the tcpdump dumpfile (must give a filename *.pcap)

# Some shortcuts for different directory listings
alias ls='ls -FG'  # classify files in color
alias ll='ls -alhFG'  # long list
alias la='ls -AFG'  # all but . and ..
alias sl='ls'
alias tree='tree -ahFC'  # tree with file sizes and indicators

# Some shortcuts for servers I might want to talk to
alias sporkhack='telnet sporkhack.com'  # Play nethack
alias mud='telnet slothmud.org 6101'  # Start SlothMUD
