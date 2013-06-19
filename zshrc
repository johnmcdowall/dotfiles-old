# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=()

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export BUNDLER_EDITOR=subl

export PATH=~/bin:$PATH

#sets up the color scheme for list export
LSCOLORS=gxfxcxdxbxegedabagacad

export TERM=xterm-color

#sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'
alias bake='bundle exec rake'
alias be='bundle exec'
alias bi='bundle install'
alias be='bundle exec'
alias bu='bundle update'
alias gs='git status'
alias gad='git add .'
alias gc='git commit'
alias gca='git commit -a'
alias gcaa='git commit -a --amend -C HEAD'
alias gcl='git clone'
alias gcm='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias get='sudo apt-get install'
alias gg='git lg'
alias gpush='git push'
alias gpsuh='git push'
alias gpr='git pull --rebase'
alias grc='git rebase --continue'

alias rdm='be rake db:migrate'
alias rdtp='be rake db:test:prepare'

alias download="curl -OJ"

if [[ -a ~/.env_variables ]]; then
  source ~/.env_variables
fi

# Make Rails Faster
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

PATH=$PATH:$HOME/dotfiles/scripts

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Custom scripts!
geotag() {
  exiftool -GPSLatitude="$2" -GPSLongitude="$3" -overwrite_original "$1"
}

gifify() {
  if [[ -n "$1" ]]; then
    ffmpeg -i $1 -r 20 -vcodec png out-static-%05d.png
    time convert -verbose +dither -layers Optimize -resize 600x600\> out-static*.png  GIF:- | gifsicle --colors 128 --delay=5 --loop --optimize=3 --multifile - > $1.gif
    rm out-static*.png
  else
    echo "proper usage: gifify <input_movie.mov>. You DO need to include extension."
  fi
}

