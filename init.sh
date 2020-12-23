
set DEBUG="true"

source ~/.dotfiles/functions.sh
source ~/.dotfiles/aliases.sh
source ~/.dotfiles/settings.sh
source ~/.dotfiles/.env

if tmux info &> /dev/null; then
	# it's running
	cat ~/.dotfiles/motd
else
	# tmux not running, assume initial sourcing	
	# deploy
	source ~/.dotfiles/deploy.sh




	tmux
fi



