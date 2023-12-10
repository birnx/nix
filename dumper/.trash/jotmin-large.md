UTF-8 locale
fontconfig
freetype
pixman
wayland (client and cursor libraries)
xkbcommon
utf8proc (optional, needed for grapheme clustering)
libutempter (optional, needed for utmp logging on Linux)
ulog (optional, needed for utmp logging on FreeBSD)
fcft 1
If you are packaging foot, you may also want to consider adding the following optional dependencies:

libnotify: desktop notifications by default uses notify-send.
xdg-utils: URLs are by default launched with xdg-open.
bash-completion: If you want completion for positional arguments.
Building
In addition to the dev variant of the packages above, you need:

meson
ninja
wayland protocols
ncurses (needed to generate terminfo)
scdoc (for man page generation, not needed if documentation is disabled)
llvm (for PGO builds with Clang)
tllist 1
systemd (optional, foot will install systemd unit files if detected)
