#
# ~/.bashrc
#

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias dt="cd ~/Desktop"
alias pr="cd ~/Projects"
alias dl="cd ~/Downloads"


# Applications
alias c="flatpak run com.visualstudio.code ."
alias lsa="lsd -hal --group-directories-first" #ls command with colors and nerdfont icons
alias ls="lsd --group-directories-first" #ls command with colors and nerdfont icons
alias nscan="sudo nmap -sn 192.168.1.* && echo ' ' && echo 'For more information: sudo nmap -A 192.168.1.*'"
alias pscan="nmap -p-"
alias ytdl="yt-dlp -f 'ba' -x --audio-format mp3"

#xdiskusage = #windirstat like app

alias raspi02="ssh jrosh@192.168.1.2"


alias sysfetch="~/bin/sysfetch" # System Fetch
alias colorscript="~/bin/colorscript" #Run a test color script

#epy epub reader
alias rss="canto-curses"
# Get week number
alias week='date +%V'
# Get a random number in range:
#alias random='echo $(( $RANDOM % 20 + 1 ))'
alias mc="java -jar ~/Documents/TLauncher-2.885.jar"

alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias update="sudo apt update && sudo apt list --upgradable && sudo apt upgrade && flatpak update"
alias maintenance="sudo apt autoremove && sudo apt autoclean"
alias zelda="cd ~/ && ./Games/yuzu-mainline-20230513-a0bf08807.AppImage &"


# Android SDK envs
export ANDROID_HOME=$HOME/Android
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Colours have names too. Stolen from Arch wiki
txtblk='\[\e[0;30m\]' # Black - Regular
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
bldblk='\[\e[1;30m\]' # Black - Bold
bldred='\[\e[1;31m\]' # Red
bldgrn='\[\e[1;32m\]' # Green
bldylw='\[\e[1;33m\]' # Yellow
bldblu='\[\e[1;34m\]' # Blue
bldpur='\[\e[1;35m\]' # Purple
bldcyn='\[\e[1;36m\]' # Cyan
bldwht='\[\e[1;37m\]' # White
unkblk='\[\e[4;30m\]' # Black - Underline
undred='\[\e[4;31m\]' # Red
undgrn='\[\e[4;32m\]' # Green
undylw='\[\e[4;33m\]' # Yellow
undblu='\[\e[4;34m\]' # Blue
undpur='\[\e[4;35m\]' # Purple
undcyn='\[\e[4;36m\]' # Cyan
undwht='\[\e[4;37m\]' # White
bakblk='\[\e[40m\]'   # Black - Background
bakred='\[\e[41m\]'   # Red
badgrn='\[\e[42m\]'   # Green
bakylw='\[\e[43m\]'   # Yellow
bakblu='\[\e[44m\]'   # Blue
bakpur='\[\e[45m\]'   # Purple
bakcyn='\[\e[46m\]'   # Cyan
bakwht='\[\e[47m\]'   # White
txtrst='\[\e[0m\]'    # Text Reset

#Get git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Minimalist style with current working directory and Git branch
export PS1='\[\033[0;36m\]\w\[\033[0;33m\]$(parse_git_branch)\[\033[00m\] $ '
# ~/Projects/dashmaster (main) $ 


