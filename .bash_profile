
#Suppress warning by Apple that zsh shell is preferred.
export BASH_SILENCE_DEPRECATION_WARNING=1


#Colorizing Bash Prompt: generated from http://bashrcgenerator.com:
export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]: \[$(tput sgr0)\]"

## == Porter == ##
export PATH="$PATH:~/.porter"

## === Java Things === ##
#Find OpenJDK
export PATH="/usr/local/opt/openjdk/bin:$PATH"

## === Ruby Things === ##
#Add the user/Homebrew Ruby to your path to avoid the system, Ruby. 

export RUBY_HOME=/usr/local/opt/ruby/bin
export PATH=$RUBY_HOME:$PATH


#Add the new user gems binary directory to your path.
#GEM_PATH can include multiple paths where Gem will look for Gems whilst GEM_HOME is a single directory that is the default location for Gems — here I am using one directory for both)

export GEM_PATH=/usr/local/opt/ruby/lib/ruby/gems/2.7.0
export GEM_HOME=$GEM_PATH
export PATH=$RUBY_HOME:$GEM_HOME/bin:$PATH



## === Python Things === ##
#sets an environment variable (PYENV_ROOT) that points to the pyenv directory
export PYENV_ROOT="$HOME/.pyenv"

#puts pyenv first in your search path so that the OS will find pyenv’s Python(s) before any other Pythons.
export PATH="$PYENV_ROOT/bin:$PATH"
#initializes pyenv each time you open a terminal
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


## === Homebrew Directory in Path === ##
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

## === Homebrew Kegs, not symlinked automatically to /usr/local === ##

## zlib, sqlite and pkg_config ###

export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/sqlite/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/sqlite/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/sqlite/lib/pkgconfig"

## === bzip2 === ##
export PATH="/usr/local/opt/bzip2/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/bzip2/include"

## === Add Sublime to Path === ##
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nanook/google-cloud-sdk/path.bash.inc' ]; then . '/Users/nanook/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nanook/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/nanook/google-cloud-sdk/completion.bash.inc'; fi
