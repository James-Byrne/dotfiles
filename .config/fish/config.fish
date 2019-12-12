set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish
# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/james/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/james/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Setup the postgres app
set PATH /Applications/Postgres.app/Contents/Versions/latest/bin $PATH

set fish_greeting ""

set PATH ~/.npm-global/bin $PATH

set EDITOR vim

rvm default

set -g fish_user_paths "/usr/local/opt/node@8/bin" $fish_user_paths
set -gx HOMEBREW_GITHUB_API_TOKEN 097768066e4e92b2d3846ef2b9f3fe1e3005b3a8
source ~/.asdf/asdf.fish
export MYSQL_DEVELOPMENT_ROOT_PWD="mypwd"

export ANDROID_HOME=/Users/james/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/james/Library/Android/sdk
set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths
