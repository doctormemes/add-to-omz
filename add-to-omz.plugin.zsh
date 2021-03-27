#!/bin/zsh

# OhMyZsh plugin for adding other plugins/themes from GitHub. 

add-to-omz() {
    if [ $# -eq 2 ]
    then
        local type="${1}s"
        local git_repo=$2
        local name=$(echo "${git_repo:t}" | cut -f 1 -d '.')
        if [[ ${type} = "themes" || ${type} = "plugins" ]] && [[ ${git_repo} = *".git" ]]; then
            if [ -d $ZSH/custom/$type/$name ]
            then
                printf "Specified plugin or theme appears to be installed already\n"
            else
                git clone --depth=1 $git_repo $ZSH/custom/$type/$name
            fi
        else
            printf "\t%b%s\n\v" "\e[1;31mINVALID USAGE\e[0m"
            printf "%s\v\n%b\n  %s\n\v%b\n  %s\t%s\n  %s\t%s  %s\n" "Add a plugin or theme to OhMyZsh" "\e[1;39mUSAGE\e[0m" "add-to-omz <type> <git-repo-url>" "\e[1;39mTYPES\e[0m" "plugin:" "Specify this type for plugins" "theme:" "Specify this type for themes"
        fi
    elif [ $# -eq 0 ]
    then
        printf "%s\v\n%b\n  %s\n\v%b\n  %s\t%s\n  %s\t%s  %s\n" "Add a plugin or theme to OhMyZsh" "\e[1;39mUSAGE\e[0m" "add-to-omz <type> <git-repo-url>" "\e[1;39mTYPES\e[0m" "plugin:" "Specify this type for plugins" "theme:" "Specify this type for themes"
    else
        printf "\t%b%s\n\v" "\e[1;31mINVALID ARGUMENTS\e[0m"
        printf "%s\v\n%b\n  %s\n\v%b\n  %s\t%s\n  %s\t%s  %s\n" "Add a plugin or theme to OhMyZsh" "\e[1;39mUSAGE\e[0m" "add-to-omz <type> <git-repo-url>" "\e[1;39mTYPES\e[0m" "plugin:" "Specify this type for plugins" "theme:" "Specify this type for themes"
    fi
}
