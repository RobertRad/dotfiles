#/usr/bin/env zsh

if [ -z $ZSH_VERSION ]; then
	echo "Error: Need to be run in zsh!"
	exit 1
fi
if [[ ! -f "$HOME/.oh-my-zsh/oh-my-zsh.sh" ]]; then
	echo "Error: Install Oh my zsh first!"
	exit 1
fi
if [[ -e "${HOME}/.zshrc_backup" ]]; then
	echo "Error: ~/.zshrc_backup already exists!"
	exit 1
fi

dir=$(readlink -f "$(dirname $0)")

declare -A profile_map
i=1
for filename in ${dir}/profiles/*; do
	filename=$(basename $filename)
	profile_map[$i]=$filename
	echo "[$i] $filename"
	i=$((i+1))
done

echo -n "Choose profile: "
read

profile=$profile_map[$REPLY]
if [[ -z $profile ]]; then
	echo "No valid profile chosen"
	exit 1
fi

echo "Using profile '$profile'"
if [[ -e "${HOME}/.zshrc" ]]; then
	echo "Info: ~/.zshrc already exists - Moving it to ~/.zshrc_backup"
	mv ${HOME}/.zshrc ${HOME}/.zshrc_backup
fi
cat > "${HOME}/.zshrc" <<- EOF
	export MY_ZSH_PROFILE="${profile}"
	. "${dir}/.zshrc"
EOF
echo ""

function _copy_from_template_folder() {
	template_folder="${dir}/profiles/${profile}/templates"
	if [[ -f "${template_folder}/$1" ]]; then
		if [[ -e "${HOME}/$1" ]]; then
			echo "File ~/$1 already exists, so the template is not copied."
		else
			cp "${template_folder}/$1" ${HOME}
			echo "Copied template $1 to ~."
		fi
	fi
}

_copy_from_template_folder '.localzsh_prompt'
_copy_from_template_folder '.localzsh_aliases'
_copy_from_template_folder '.localzsh_env'

echo ""
echo "Finished installation. Have fun!"
