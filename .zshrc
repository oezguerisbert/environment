# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/oetzi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

DISABLE_UPDATE_PROMPT="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh > /dev/null

source ~/.zplug/init.zsh > /dev/null

zplug "YannickFricke/yarn-completion", from:github
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/docker",   from:oh-my-zsh
zplug "plugins/docker-compose",   from:oh-my-zsh
zplug "zsh-users/zsh-completions", depth:1
zplug "zsh-users/zsh-autosuggestions", from:github
zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:1
zplug "hlissner/zsh-autopair", defer:2
zplug "YannickFricke/NodeAliases", use:"aliases.sh"
zplug "code-stats/code-stats-zsh", from:gitlab, use:"codestats.plugin.zsh"
zplug "jerguslejko/zsh-symfony-completion", use:"symfony-console.plugin.zsh"
zplug "lukechilds/zsh-nvm"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# zplug load --verbose

zplug load

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

mkd() {
        mkdir -p -- "$1" &&
    cd -P -- "$1" && clear
}

cd ~
clear
