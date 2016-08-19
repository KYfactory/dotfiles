#!/bin/zsh

HOME=${HOME}
PWD=`pwd`

main() {
    install_brew
    set_git_config
    set_symlink
}

set_symlink() {
    echo "\e[34m\n...creating symlink\e[m"
    dotfiles=(".zshrc" ".vimrc")
    for dotfile in "${dotfiles[@]}"
    do
        echo "symlink ${HOME}/${dotfile} -> ${PWD}/${dotfile}"
        `ln -sf ${PWD}/${dotfile} ${HOME}/${dotfile}`
    done
}

install_brew() {
    # homebrew
    `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
    # homebrew cask
    `brew tap caskroom/cask`

    while read line
    do
        install_app=${(z)line}
        if [ ${install_app[1]} = 'brew' ]; then
            echo "\e[34m\n...installing ${install_app[2]}\e[m"
            `brew install ${install_app[2]}`
        elif [ ${install_app[1]} = 'cask' ]; then
            echo "\e[34m\n...installing ${install_app[2]}\e[m"
            `brew cask install ${install_app[2]}`
        fi
    done < brew
}

set_git_config() {
    # エディタにvim を使用
    git config --global core.editor "/usr/bin/vim"
}


echo "\e[31mstart set up...\n\e[m"
main
echo "\e[31m\nset up end!\e[m"
