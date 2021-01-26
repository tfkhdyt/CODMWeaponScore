#!/bin/bash
pkg install ncurses bc
echo "source ~/CODMWeaponScore/codm.sh" >> ~/.zshrc
echo "source ~/CODMWeaponScore/codm.sh" >> ~/../usr/etc/bash.bashrc
clear
echo "Instalasi sukses!"
echo "Ketik 'ws -h' atau 'ws --help' untuk menampilkan petunjuk penggunaan"
cd ~
sleep 5
$SHELL
