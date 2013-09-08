#!/bin/bash

# set -x

back_file_list="$HOME/.bash_profile $HOME/.vimrc $HOME/.vim/plugin" 
dev_env_file=DevEnv.tar

rm -rf $dev_env_file

# touch $dev_env_file

tar_opt="cvf"

for _file in $back_file_list
    do
        if [ ! -f "$dev_env_file" ]; then
            tar_opt="cvf"
        else 
            tar_opt="uvf"
        fi

        if [ -f "$_file" ]; then
            tar $tar_opt $dev_env_file $_file
        elif [ -d "$_file" ]; then
            tar $tar_opt "$dev_env_file" "$_file" 
        fi
    done 
