#!/bin/bash
set -e

pushd "$(dirname "${BASH_SOURCE[0]}")/.." >/dev/null

if [ ! -f ./tests/docker-sshkey ]; then
  ssh-keygen -q -t rsa -N '' -f ./tests/docker-sshkey
fi
