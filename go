#!/bin/bash
#set -ex
trap 'failed' ERR

WIN_BOX_NAME=IE11_Win7_from_file

do_something() {
}

failed() {
    while caller $((n++)); do :; done;
}

do_something
