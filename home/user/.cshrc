#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
# more examples available at /usr/share/examples/csh/
#
set path = ( $path ~/.sh )

alias h		history 25
alias j		jobs -l
alias la	ls -aF
alias lf	ls -FA
alias ll	ls -lAF

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/bin)
# A righteous umask
# umask 22

setenv	EDITOR	vi
setenv	PAGER	less

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt="%{\033[1;31m%}>%{\033[0m%} "
	set promptchars = "%#"

	set filec
	set history = 1000
	set savehist = (1000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

endif

# =====================================================
# ALIASES
# =====================================================

alias myip 'curl ident.me; echo'
alias BSD 'clear; ufetch; lsblk'
alias shrc 'vi ~/.cshrc'
alias exrc 'vi ~/.exrc'
alias doas-i 'doas su -'
alias clvitmp 'rm -fv /tmp/vi*'
alias la 'ls -la'
alias pick 'hyprpicker'
alias pkgs 'doas pkg search'
alias pkgls 'pkg prime-list'
alias pkgup 'doas pkg update; doas pkg upgrade'
alias pkgi 'doas pkg install'
alias pkgrm 'doas pkg remove'
alias pkgclr 'doas pkg autoremove; doas pkg clean -a; echo "echo packages installed: [ `pkg query "%n" | wc -l | xargs` ]"'
alias bsdup 'doas freebsd-update fetch; doas freebsd-update install'
alias bsdclr 'doas rm -rf /boot/kernel.old /boot/modules.old'
alias pkgq 'echo packages installed: [ `pkg query "%n" | wc -l | xargs` ]'

