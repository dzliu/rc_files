export PATH="/opt/homebrew/opt/vim/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

# If you come from bash you might have to change your $PATH.
alias vv="source $HOME/shipping/bin/activate"
export PATH=$HOME/bin:/usr/.local/bin:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PS_SNOW_PW=servicen0w123!
export RB_SNOW_PW=rambus123
export AU_SNOW_PW=PD$N!g@QCIs8
export MEDALLIA_SNOW_PW=BannerMedalia17$
export NUTANIX_SNOW_PW=Nutanix@2017
export FFN_SNOW_PW=Fr33domM0ve!
export CL_SNOW_PW=Clorox#1
export EQ_SNOW_PW="gJIH$yC!*qSzoUbc7yGL"
export EQ_SNOW_PW_DEV=qk!CroZ0ixmhEfv7zGmAPrtF0
export BC=Broadc@m123
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PYTHONPATH=$HOME/shipping/
export KMS=arn:aws:kms:us-east-1:922531023312:key/c1a7e790-53d4-40c7-984c-35d4e2806312
export DYLD_FALLBACK_LIBRARY_PATH='/usr/bin/libtool'
export DYLD_FALLBACK_LIBRARY_PATH=$HOME/lib:/usr/local/lib:/lib:/usr/lib
function gfu() {
    cd /Users/dzliu/shipping/rio
    git co master
    git fetch upstream
    git rebase upstream/master
    git push
}
function bcb() {
    cd /Users/dzliu/moveworks/moveworks
    git co master
    vv  # i have a alias to activate virtual env using "vv"
    bazel clean --expunge
    bazel build //...
}
function awss(){
    ssh -i ~/shipping/access_keys/dogpatch_server_key_pair.pem ec2-user@ec2-54-153-45-228.us-west-1.compute.amazonaws.com
}
function awsl(){
    ssh -i ~/shipping/access_keys/dogpatch_server_key_pair.pem ec2-user@ec2-54-67-33-65.us-west-1.compute.amazonaws.com
}
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="Cobalt2"
ZSH_THEME="candy"
#ZSH_THEME="candy-kingdom"
#ZSH_THEME="avit"


# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
set -o vi


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dzliu/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dzliu/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dzliu/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dzliu/google-cloud-sdk/completion.zsh.inc'; fi
. "$HOME/.cargo/env"
source ~/miniconda3/etc/profile.d/conda.sh
