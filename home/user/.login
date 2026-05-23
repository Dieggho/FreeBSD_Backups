#
# .login - csh login script, read by login shell, after `.cshrc' at login.
#
# See also csh(1), environ(7).
#

# Query terminal size; useful for serial lines.
if ( -x /usr/bin/resizewin ) /usr/bin/resizewin -z

# Display a random cookie on each login.
if ( -x /usr/bin/fortune ) /usr/bin/fortune freebsd-tips

setenv EDITOR vi

set path = ( $path $HOME/.sh )

setenv XKB_DEFAULT_LAYOUT br
setenv XKB_DEFAULT_MODEL thinkpad
setenv XDG_RUNTIME_DIR "/tmp/${USER}-runtime"
setenv MOZ_ENABLE_WAYLAND 1
setenv GTK_CSD 0
setenv QT_QPA_PLATFORM wayland
setenv XDG_SESSION_TYPE wayland
