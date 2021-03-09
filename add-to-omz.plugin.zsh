#!/bin/zsh

# OhMyZsh plugin for adding other plugins/themes from GitHub. 

add-to-omz() {
    if [ $# -eq 2 ]
    then
        local plugin_theme=${1}s
        local git_repo=$2
        local name=$(echo "${git_repo##*/}" | cut -f 1 -d '.')
        if [[ ${plugin_theme} = "themes" || ${plugin_theme} = "plugins" ]] && [ ${git_repo} = *".git" ]; then
            [ -d $ZSH/custom/$plugin_theme/$name ] && (cd $ZSH/custom/$plugin_theme/$name && git pull) || git clone --depth=1 $git_repo $ZSH/custom/$plugin_theme/$name
            if [ -d $ZSH/custom/$plugin_theme/$name ]
            then
                printf "Specified plugin or theme appears to be installed already\n"
            else
                git clone --depth=1 $git_repo $ZSH/custom/$plugin_theme/$name
            fi
        else
            printf "\t%b%s\n\v" "\e[1;31m===INVALID USAGE===\e[0m"
            printf "%b\n  %s  %s\n\v" "\e[1;39mUSAGE\e[0m" "add-to-omz <git-repo-url> <type>"
            printf "%b\n  %s\t%s\n  %s\t%s  %s\n" "\e[1;39mTYPES\e[0m" "plugin:" "Specify this type for plugins" "theme:" "Specify this type for themes"
        fi
    elif [ $# -eq 0 ]
    then
        printf "%s\v\n" "Add a plugin or theme to OhMyZsh"
        printf "%b\n  %s  %s\n\v" "\e[1;39mUSAGE\e[0m" "add-to-omz <git-repo-url> <type>"
        printf "%b\n  %s\t%s\n  %s\t%s  %s\n" "\e[1;39mTYPES\e[0m" "plugin:" "Specify this type for plugins" "theme:" "Specify this type for themes"
    else
        printf "\t%b%s\n\v" "\e[1;31m===INVALID USAGE===\e[0m"
        printf "%b\n  %s  %s\n\v" "\e[1;39mUSAGE\e[0m" "add-to-omz <git-repo-url> <type>"
        printf "%b\n  %s\t%s\n  %s\t%s  %s\n" "\e[1;39mTYPES\e[0m" "plugin:" "Specify this type for plugins" "theme:" "Specify this type for themes"
    fi
}