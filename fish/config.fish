set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish

# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/james/.local/share/omf"

# Ticketsolve
# Add the mysql password for root
set -gx MYSQL_DEVELOPMENT_ROOT_PWD "password"

# Add a placeholder to avoid boot issues
set -gx SLACK_INFO_SERVERS_EMAIL ""

# Customize Oh My Fish configuration path.
# set -gx OMF_CONFIG "/Users/james/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Setup the postgres app
set PATH /Applications/Postgres.app/Contents/Versions/latest/bin $PATH

set fish_greeting ""

set PATH ~/.npm-global/bin $PATH

set EDITOR vim

set -g fish_user_paths "/usr/local/opt/node@8/bin" $fish_user_paths
set -gx HOMEBREW_GITHUB_API_TOKEN 097768066e4e92b2d3846ef2b9f3fe1e3005b3a8
source ~/.asdf/asdf.fish

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths

set NERVES_NETWORK_SSID "NETGEAR23"
set NERVES_NETWORK_PSK "festiveiris996"
