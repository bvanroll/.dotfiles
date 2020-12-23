#maps $2 to $1

if [ "$DEBUG" = "true" ]; then
	echo "loading functions"
fi

function checkFile() {
	# check if dest exists
	if [ -f $2 ]; then
		mv $2 $2.bak
		ln -s $1 $2
	fi
}

function checkDir() {
	if [ -d $2 ]; then
		mv $2 $2.bak
		ln -s $1 $2
	fi
}

function debugMsg() {
	if [ "$DEBUG" = "true" ]; then
		echo $1
	fi
}

function todoList() {
	cat ~/.todo
}

function todoAdd() {
	echo "TODO $1\n" >> ~/.todo
}

function todoClear() {
	echo "\n" > ~/.todo
}

# adds github ssh key, requires env var GITHUB_TOKEN to be set
function addGhSsh() {
	curl -H "Authorization: token ${GITHUB_TOKEN}" --data "{\"title\":\"${1}\", \"key\":\"$(cat ~/.ssh/id_rsa.pub)\"}" https://api.github.com/user/keys
}













if [ "$DEBUG" = "true" ]; then
	echo "done loading functions"
fi



