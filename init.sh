
set DEBUG="true"


source ~/.dotfiles/functions.sh
source ~/.dotfiles/aliases.sh
source ~/.dotfiles/settings.sh

#setting vars, .env for private non git vars just in case
source ~/.dotfiles/env
source ~/.dotfiles/.env

##if tmux info &> /dev/null; then
#	# it's running
#	cat ~/.dotfiles/motd
#else
#	# tmux not running, assume initial sourcing	
#	# deploy
#	source ~/.dotfiles/deploy.sh
#
#
#
#
#	tmux
#fi
#
TERM=xterm-256color

eval "$(pyenv init -)"
