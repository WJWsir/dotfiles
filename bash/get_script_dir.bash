#!/usr/bin/env bash

#1. readlink -f命令可以获取软链接文件所指向的原始文件的绝对路径。
#2. "$0"是当前脚本的路径,如果是软链接,它指向的是软链接文件本身的路径。
#3. 通过这种方式,无论是直接执行原始脚本文件,还是执行指向它的软链接文件,都可以正确获取到原始脚本所在的目录,从而可以正确调用同一目录下的其他脚本文件。

function get_script_path() {
    # get real path of current script regardless of soft link file or regular file
    real_script_path=$(readlink -f "$1")

    # get dir path of script
    script_dir=$(dirname "$real_script_path")

    echo $script_dir
}
