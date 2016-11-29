if ls --color -d . >/dev/null 2>&1; then  # GNU ls
    export COLUMNS  # Remember columns for subprocesses.
    eval "$(dircolors)"
    function ls {
	command ls -F -h --color=always -v --author --time-style=long-iso -C "$@" | less -R -X -F
    }
    alias ll='ls -l'
    alias l='ls -l -a'
    fi
