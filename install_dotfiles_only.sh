
copy="cp -i"
if [[ "$1" == "-y" ]]; then
    copy="cp"
fi

$copy .bash_profile ~/.bash_profile
$copy .bashrc ~/.bashrc
$copy .zshrc ~/.zshrc
touch ~/.hushlogin
