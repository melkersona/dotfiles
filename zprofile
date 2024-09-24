if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi

eval $(ssh-agent) > /dev/null
ssh-add ~/.ssh/sheco_it 2> /dev/null
ssh-add ~/.ssh/id_rsa 2> /dev/null
