#! /bin/sh

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update
sudo dnf install -y code

mkdir -p ~/.config/Code/User
wget https://bitbucket.org/lisp719/win/raw/master/vscode/keybindings.json -O ~/.config/Code/User/keybindings.json
wget https://bitbucket.org/lisp719/win/raw/master/vscode/locale.json -O ~/.config/Code/User/locale.json
wget https://bitbucket.org/lisp719/win/raw/master/vscode/settings.json -O ~/.config/Code/User/settings.json

code --install-extension Ionide.Ionide-fsharp
code --install-extension lucax88x.codeacejumper
code --install-extension ms-vscode.sublime-keybindings
code --install-extension sbrink.elm
