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

profile_list=()
for filename in ${dir}/profiles/*; do
	filename=$(basename $filename)
	profile_list=($profile_list $filename)
done

echo "Choose profiles to active!"
echo

selected_profiles=()
finished="false"
while [[ "$finished" = "false" ]]; do
	for ((i = 1; i <= $#profile_list; i++)); do
		# $selected_profiles.contains($profile_list[i])
		if (($selected_profiles[(I)$profile_list[i]])); then
			toggle="[X]"
		else
			toggle="[ ]"
		fi
		echo "$toggle $i: $profile_list[i]"
	done
	echo ""
	echo "[ ] f: Finish selection"
	echo -n "Choose profile: "
	read

	if [[ $REPLY = "" ]]; then
		echo "Select a valid profile!"
		echo ""
	elif [[ $REPLY = "f" ]]; then
		echo ""
		finished="true"
	else
		profile_selected=$profile_list[$REPLY]
		if [[ -z $profile_selected ]]; then
			echo "Select a valid profile!"
			echo ""
		fi
		# $selected_profiles.contains($profile_selected)
		if (($selected_profiles[(I)$profile_selected])); then
			# $selected_profiles.remove($profile_selected)
			selected_profiles[$selected_profiles[(i)$profile_selected]]=()
		else
			selected_profiles=($selected_profiles $profile_selected)
		fi
		echo ""
	fi
done

if [[ ${#selected_profiles} -eq 0 ]]; then
	echo "Error: No profile chosen"
	exit 1
fi

echo "Selected profiles: $selected_profiles"
echo ""

if [[ -e "${HOME}/.zshrc" ]]; then
	echo "Info: ~/.zshrc already exists - Moving it to ~/.zshrc_backup"
	mv ${HOME}/.zshrc ${HOME}/.zshrc_backup
fi
cat > "${HOME}/.zshrc" <<- EOF
	export MY_ZSH_PROFILES="(${selected_profiles})"
	. "${dir}/.zshrc"
EOF

function _copy_from_template_folder() {
	template_folder="${dir}/profiles/${1}/templates"
	if [[ -f "${template_folder}/$2" ]]; then
		if [[ -e "${HOME}/$2" ]]; then
			cat "${template_folder}/$2" >> "${HOME}/$2"
			echo "Added template $2 from $1 to ~."
		else
			cp "${template_folder}/$2" ${HOME}
			echo "Copied template $2 from $1 to ~."
		fi
	fi
}

for profile ("$selected_profiles[@]"); do
	_copy_from_template_folder $profile '.localzsh_prompt'
	_copy_from_template_folder $profile '.localzsh_aliases'
	_copy_from_template_folder $profile '.localzsh_env'
done

echo ""
echo "Finished installation. Have fun!"
