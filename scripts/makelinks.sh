#! /bin/sh
GITPATH="$( cd -- "$(dirname "$0")/.." >/dev/null 2>&1 ; pwd -P )"
echo $GITPATH
GITCONFIGPATH=$GITPATH/config
CONFIGPATH=$HOME/.config
GITSCRIPTPATH=$GITPATH/script
GITHOMEPATH=$GITPATH/home

#/home/$USER/dev/dotfiles
#echo $SCRIPTPATH
#/home/$USER/.config
#echo $CONFIGPATH

#alacritty
#i3
#i3blocks
#i3status
#nvim
#picom
#polybar
#ranger
#redshift
#rofi
#terminator
#tmux
mkdir -p $CONFIGPATH
for x in $GITCONFIGPATH/*; do
#	echo $(basename $x)
#	mkdir -p $CONFIGPATH/$x
	ln -sf "$GITCONFIGPATH/$(basename $x)" "$CONFIGPATH/$(basename $x)"
#	echo $(basename $x)
done

for x in $GITHOMEPATH/*; do
#	echo $(basename $x)
#	mkdir -p $CONFIGPATH/$x
	ln -sf "$GITHOMEPATH/$(basename $x)" "$HOME/.$(basename $x)"
#	echo $(basename $x)
done

#mkdir -p $CONFIGPATH/alacritty
#ln -s $SCRIPTPATH/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml
#
#mkdir -p $CONFIGPATH/i3
#ln -s $SCRIPTPATH/i3 

#├── i3
#│   ├── assignments.conf
#│   ├── config
#│   ├── config.i3bar
#│   └── workspace-3.json
#├── i3blocks
#│   ├── config
#│   ├── time
#│   └── volume
#├── i3status
#│   └── config
#├── nvim
#│   └── init.lua
#├── ohmyzsh
#│   ├── cache
#│   ├── CODE_OF_CONDUCT.md
#│   ├── CONTRIBUTING.md
#│   ├── custom
#│   ├── lib
#│   ├── LICENSE.txt
#│   ├── log
#│   ├── oh-my-zsh.sh
#│   ├── plugins
#│   ├── README.md
#│   ├── SECURITY.md
#│   ├── templates
#│   ├── themes
#│   └── tools
#├── picom
#│   └── picom.conf
#├── polybar
#│   ├── config.ini
#│   └── launch.sh
#├── ranger
#│   ├── colorschemes
#│   ├── commands.py
#│   ├── rc.conf
#│   ├── rifle.conf
#│   └── scope.sh
#├── readme.md
#├── redshift
#│   └── redshift.conf
#├── rofi
#│   ├── config.rasi
#│   └── dark.rasi
#├── scripts
#│   ├── fehbg
#│   ├── makelinks.sh
#│   └── monitor-setup.sh
#├── terminator
#│   └── config
#├── tmux
#│   └── tmux.conf
#├── vimrc
#├── wallpaper.png
#├── xinitrc
#├── zprofile
#├── zshenv
#└── zshrc
#
#24 directories, 38 files
