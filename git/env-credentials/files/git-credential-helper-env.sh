#!/bin/bash

if [ ! $1 == "get" ]; then
  exit 0
fi

protocol=
host=

while read line; do
  if [ -z "$line" ]; then
    break
  fi
  IFS="=" && list=($line)
  case ${list[0]} in
    protocol)
      protocol=${list[1]}
      ;;
    host)
      host=${list[1]}
      ;;
    *)
      ;;
  esac
done

if [ ! "${host}" =~ "${GIT_CREDENTIAL_HOST}" ]; then
  echo -e "not matching host: ${host} != ${GIT_CREDENTIAL_HOST}"
  exit 0
fi

echo "protocol=${protocol}"
echo "host=${host}"
echo "username=${GIT_CREDENTIAL_USERNAME}"
echo "password=${GIT_CREDENTIAL_PASSWORD}"
