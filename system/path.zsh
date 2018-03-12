export PATH="$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$HOME/.bin:$PATH"

if [ -d "/Applications/Postgres.app/Contents/Versions/9.6/bin" ]; then
	export PATH="/Applications/Postgres.app/Contents/Versions/9.6/bin:$PATH"
fi

export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"
