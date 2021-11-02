# +------+
# | AUTO |
# +------+
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# +----------------+
# | BINARY SOURCES |
# +----------------+
# My ln binary links
export HOMEBIN="$HOME/bin"
export PATH=$PATH:$HOMEBIN

# PIP bin
export PIPBIN="$HOME/.local/bin"
export PATH=$PATH:$PIPBIN

# YARN bin
export YARNBIN="$(yarn global bin)"
export PATH=$PATH:$YARNBIN

# GO bin
export GOROOT="/usr/local/go"
export PATH=$PATH:$GOROOT/bin

# GO path
export GOPATH="$HOME/src-code/go"
export PATH=$PATH:$GOPATH/bin

#< Below variables commented out since using sdkman to manage all of those

# Gradle bin
# export GRADLE_VER="gradle-7.1.1" # Previous: 7.0.2
# export GRADLE="/opt/gradle"
# export PATH=$PATH:$GRADLE/$GRADLE_VER/bin

# Maven bin
# export MAVEN_VER="apache-maven-3.8.1"
# export MAVEN="/opt/maven"
# export PATH=$PATH:$MAVEN/$MAVEN_VER/bin

# JAVA path // OS diff
# export JAVA_HOME="/usr/lib/jvm/default-java"
# export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"
# export JAVA_HOME="/usr/lib/jvm/adoptopenjdk-8-openj9-amd64"
# export PATH=$PATH:$JAVA_HOME/bin

# Oracle Instant Client
# export ORACLE_HOME=/opt/oracle/instantclient_12_2
# export LD_LIBRARY_PATH="$ORACLE_HOME"
# export ORACLE_SID="ORCLCDB"
# export PATH=$PATH:$ORACLE_HOME

#>

# +-----------+
# | UTILITIES |
# +-----------+
# alias command to clear terminal
alias cl="clear && printf '\e[3J'"
# alias hgit
alias hgit='git --git-dir ~/.homenix/.git --work-tree=$HOME'
# alias hgitslim
alias hgitslim='git --git-dir ~/.homenix-slim/.git --work-tree=$HOME/.homenix-slim'

# +---------------+
# | Ubuntu Specify|
# +---------------+
if uname -a | grep -q 'Ubuntu'; then
    # alias zsh package not found recommendation
    source /etc/zsh_command_not_found

    # Fuck you NVIDIA
    brightness() {
        # validate input format
        re='^[0-9]+$'
        if ! [[ $1 =~ $re ]] ; then
           echo "Error: Not a number" >&2; return
        fi

        # cast into int
        value=$(($1-0))

        # check range
        if [ $value -gt 100 ] || [ $value -lt 0 ]
        then
            echo "$value not valid number value should be around 1-100"
        # or else set brightness value
        else
            value=$(($value.0/100))
            xrandr --output DP-4 --brightness $value
        fi
    }
fi

# +--------------+
# | M$ UTILITIES |
# +--------------+
if uname -a | grep -q 'WSL2'; then
    # Export current working directory
    # export TAX="/mnt/c/Users/sfnvm/src-code/teca/tax"
    # Export Windows Home folder
    export WH="/mnt/c/Users/trung"
    # Alias Notepad++
    alias npp="/mnt/c/Program\ Files/Notepad++/notepad++.exe"
    # Alias Intellij Idea
    alias idea="/mnt/c/Program\ Files/JetBrains/IntelliJ\ IDEA\ 2020.3.2/bin/idea64.exe"
    # Alias Clipboard
    alias cpy="tr -d '\n' | clip.exe"
    # Alias Explorer.exe
    alias open="explorer.exe"
fi

# +------------+
# | WSL Issues |
# +------------+
# WSL such, it load the profile file before .bashrc :/
# Commented out. Now it's stuck in bootloop LUL M$
# If running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# RUST bin: This env file contained binary source
. "$HOME/.cargo/env"