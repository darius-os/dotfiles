dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
#export _JAVA_AWT_WM_NONPARENTING=1
synergyc pop-os
#xset r rate 300 50

#exec i3

export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11
exec gnome-session
