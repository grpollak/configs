# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
PAPERSIZE=a4
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pollakg/.zshrc'

autoload -Uz compinit
setopt COMPLETE_ALIASES # Autocompletion for aliases
compinit
kitty + complete setup zsh | source /dev/stdin
# End of lines added by compinstall

##############################################################
###################### My Configuration ######################
##############################################################
##############################################################
######################     Basics       ######################
##############################################################
###################    Custome Functions     #################
fpath+=~/.zfunc
# Neofetch (Arch logo on startup of terminal)
# neofetch
pfetch
export MOZ_ENABLE_WAYLAND=1
######################      OpenMP      ######################
export OMP_NUM_THREADS=8
##### DEFAULT EDITOR
export VISUAL="emacsclient -t -a ''"
export EDITOR="emacsclient -t -a ''"
export TERM="xterm-256color"
# Powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1 
. /usr/share/powerline/bindings/bash/powerline.sh
###### Powerlevel9k powerline
# font needs to be set before powerline is initalized
#POWERLEVEL9K_MODE='nerd-fonts-complete'
# POWERLEVEL9K_MODE='nerdfont-complete'
# source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# Battery
# POWERLEVEL9K_BATTERY_CHARGING='yellow'
# POWERLEVEL9K_BATTERY_CHARGED='green'
# POWERLEVEL9K_BATTERY_DISCONNECTED='echo $DEFAULT_COLOR'
# POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
# POWERLEVEL9K_BATTERY_LOW_COLOR='red'
# POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
# POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='253'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='\uf0da'
POWERLEVEL9K_CUSTOM_ARCH_ICON="\uf302'"
POWERLEVEL9K_CUSTOM_ARCH_ICON_BACKGROUND=002
# DIR
POWERLEVEL9K_DIR_HOME_BACKGROUND='002'
# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='003'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='011'
# USER
POWERLEVEL9K_USER_DEFAULT_BACKGROUND=241
POWERLEVEL9K_USER_DEFAULT_FOREGROUND=255
# VCS Git
# GITSTATUS_LOG_LEVEL="DEBUG gitstatus_start -s 1 -u 1 -d 1 -c 1 -m -1 POWERLEVEL9K"
POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_arch_icon user dir ssh vcs)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_arch_icon ssh dir newline status)
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_arch_icon battery context status dir vcs)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir dir_writable user vi_mode vcs status)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs virtualenv rbenv rvm)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
# Shorten strategy 
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{001}\u256D\u2500%f"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{001}\u2570\uf460%f "
##### Powerline
#powerline-daemon -q
#. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
###### Autoload prompt theme system
# autoload -Uz promptinit
# promptinit
##### History search
# autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
# zle -N up-line-or-beginning-search
# zle -N down-line-or-beginning-search

# [[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
# [[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search
######################################################################################
#                                             German/English
######################################################################################
export XKB_DEFAULT_LAYOUT=de,us
export XKB_DEFAULT_OPTIONS=grp:alt_shift_toggle
######################################################################################
#                              My functions
######################################################################################
# alias ec=sudo emacsclient -t --socket-name=/tmp/emacs1000/server /etc/hosts 
alias e="emacsclient -t -a ''"
#alias E="SUDO_EDITOR=\"emacsclient -t -a emacs\" sudoedit"
alias E="SUDO_EDITOR=\"emacsclient -t -a emacs\" sudoedit"
#alias E="SUDO_EDITOR=\"emacsclient\" sudo -e"

function search_pdfs(){
    GREEN='\033[0;32m'
    YELLOW='\033[1;33m'
    NC='\033[0m' # No Color
    find . -maxdepth 5 -not -path '*/\.*' -iname '*.pdf' | while read filename
    do
        if pdftotext -q -enc Latin1 "$filename" - | grep -q --color=always -i $1;
        then
            echo "${GREEN}PDF Document:${YELLOW} $(basename $filename)${NC}"\
                && pdftotext -q -enc Latin1 "$filename" - | grep --color=always -i $1\
                && echo "\n"
        fi
    done
}

######################################################################################
#                        Configfiles ~/.configfiles
######################################################################################
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias config-list='config ls-tree --full-tree -r HEAD'
######################################################################################
#                              Emacs
######################################################################################
alias killemacs="echo emacsclient -e '(kill-emacs)';"
######################################################################################
#                              DOOM
######################################################################################
export PATH=~/.emacs.d/bin:$PATH
export PATH=~/.local/bin:$PATH
######################################################################################
#                              MATLAB
######################################################################################
alias matlab=/usr/local/MATLAB/R2020b/bin/matlab
######################################################################################
#                              PETSc
######################################################################################
# export PETSC_DIR=/opt/petsc
# Path to PETSC homedirectory
export PETSC_DIR=~/petsc
# specify a particular configuration of the PETSc libraries i.e. debug or no-debug
# is just a name selected by the installer to refer to the libraries compiled for a particular set of compiler options and machine type.
export PETSC_ARCH=arch-linux-c-debug
# make PETSC_DIR=/home/pollakg/petsc PETSC_ARCH=arch-linux-c-debug all 

######################################################################################
#                              Fuzzy Finder (FZF)
###################################################################################### 
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
################
# Alias
################
alias ls="ls --color"
alias ll="ls -l"

export PATH="$HOME/.poetry/bin:$PATH"
