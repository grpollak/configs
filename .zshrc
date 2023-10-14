# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Lines configured by zsh-newuser-install
xrdb -merge ~/.Xresources
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# bindkey -v
PAPERSIZE=a4
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pollakg/.zshrc'
autoload -Uz compinit
setopt COMPLETE_ALIASES # Autocompletion for aliases
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
autoload -Uz compinit && compinit
# Neofetch (Arch logo on startup of terminal)
# neofetch
pfetch
export MOZ_ENABLE_WAYLAND=1
######################      OpenMP      ######################
export OMP_NUM_THREADS=4
export MKL_NUM_THREADS=4
##### DEFAULT EDITOR
export VISUAL="emacsclient -t -a ''"
export EDITOR="emacsclient -t -a ''"
export TERM="xterm-256color"
######################      Powerline 10k ####################

###### Autoload prompt theme system

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
            # echo "${GREEN}PDF Document:${YELLOW} $(basename $filename)${NC}"\
            echo "${GREEN}PDF Document:${YELLOW} $filename${NC}"\
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
#                              Browser
######################################################################################
BROWSER=google-chrome:firefox:$BROWSER
######################################################################################
#                              Emacs
######################################################################################
alias killemacs="echo emacsclient -e '(kill-emacs)';"
#####  vTerm
vterm_printf() {
    if [ -n "$TMUX" ] && ([ "${TERM%%-*}" = "tmux" ] || [ "${TERM%%-*}" = "screen" ]); then
        # Tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}
# Clear the shell
if [[ "$INSIDE_EMACS" = 'vterm' ]]; then
    alias clear='vterm_printf "51;Evterm-clear-scrollback";tput clear'
fi
# Set Title to "HOSTNAME:PWD"
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd (){ print -Pn "\e]2;%m:%2~\a" }
# Prompt Tracking
vterm_prompt_end() {
    vterm_printf "51;A$(whoami)@$(hostname):$(pwd)"
}
setopt PROMPT_SUBST
PROMPT=$PROMPT'%{$(vterm_prompt_end)%}'
######################################################################################
#                              Local Libraries
######################################################################################
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib
######################################################################################
#                              DOOM
######################################################################################
export PATH=~/.emacs.d/bin:$PATH
export PATH=~/.local/bin:$PATH
######################################################################################
#                              Conda
######################################################################################
export PATH="$HOME/.conda/bin:$PATH"
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
# Alias i.e. for lsd and or bat
################
alias ls='lsd'
alias tf="terraform"
alias ll='ls -l'
# alias ll="ls -l --color"
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

export PATH="$HOME/.poetry/bin:$PATH"
######################################################################################
#                             SSH AGENT
######################################################################################
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket
######################################################################################
#                             Korali
######################################################################################
export KORALI_PREFIX="$HOME/polybox/CSE/master/6th_term/master_thesis/korali"
export EXAMPLES="${HOME}/polybox/CSE/master/6th_term/master_thesis/korali/examples/learning/supervised/"
######################################################################################
#                             AZURE
######################################################################################
# Store API_TOKENS in .bash_profile or .env or some other file not version controlled.
######################################################################################
#                            Powerlevel 10k
######################################################################################
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# GITSTATUS_LOG_LEVEL=DEBUG
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#                             MODULAR
######################################################################################
export MODULAR_HOME="/home/pollakg/.modular"
export PATH="/home/pollakg/.modular/pkg/packages.modular.com_mojo/bin:$PATH"
######################################################################################
#                            conda init
######################################################################################
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/pollakg/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/pollakg/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/pollakg/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/pollakg/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib/mojo
export PATH=$PATH:~/.modular/pkg/packages.modular.com_mojo/bin/
