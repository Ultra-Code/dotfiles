# This sets up colors properly
export TERM="xterm-256color" 

# set shell
export SHELL=/usr/bin/zsh

#directory where user-specific configuration files should be written
#export XDG_CONFIG_HOME="$HOME/.etc"
export XDG_CONFIG_HOME="$HOME/.config"

#dir where user-specific data files should be written
export XDG_DATA_HOME="$HOME/.local/share"

#defines the preference-ordered set of base directories to search
#for configuration files in addition to the $XDG_CONFIG_HOME base directory
export XDG_CONFIG_DIR="$HOME/.config:/etc/xdg"

#defines the preference-ordered set of base directories to search for
#data files in addition to the $XDG_DATA_HOME base directory
export XDG_DATA_DIRS="/usr/local/share/:/usr/share/"

#dir where user-specific non-essential (cached) data should be written
export XDG_CACHE_HOME="$HOME/.cache"

export HISTFILE="$HOME/.zsh_history"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

export ZSH_ALIASES="$HOME/.zsh_aliases"

export EDITOR="nvim"
export VISUAL="nvim"

# Path to your oh-my-zsh installation.
export ZSH="/home/ultracode/.oh-my-zsh"

# Set fzf installation directory path
export FZF_BASE="/usr/bin/fzf"

#NODE global path
export NODE_PATH=$NODE_PATH:$HOME/.npm-global/lib/node_modules

#Add Android Management tools to path
export PATH="$PATH:/opt/Android/cmdline-tools/latest/bin/"
export PATH="$PATH:
/home/ultracode/Repository/Git/emsdk:\
/home/ultracode/Repository/Git/emsdk/node/12.9.1_64bit/bin:\
/home/ultracode/Repository/Git/emsdk/upstream/emscripten"
export PATH="$PATH:/opt/flutter/bin/"
#yarn package mangaement tool
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export ANDROID_HOME="/opt/Android/"
export PATH="$PATH:ANDROID_HOME"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/"
export ANDROID_NKD_ROOT="/opt/Android/ndk/21.1.6352462/"

#Add completions for pipenv
#eval "$(pipenv --completion)"
export PIPENV_VENV_IN_PROJECT=1

#Cofigurations For Building using CMAKE
export CC=/usr/bin/clang-10
export CXX=/usr/bin/clang++-10
export CMAKE_GENERATOR=Ninja

