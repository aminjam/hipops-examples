#!/bin/bash

check() {
  if [ -z "$MONGO_PORT_27017_TCP_ADDR" ] || [ -z "$MONGO_PORT_27017_TCP_PORT" ]; then
    echo >&2 "error: mongo-db is not linked. Looking for --link <mongo-container>:mongo"
    exit 1
  fi
}

kestrel_cli() {
  check
  local connection="mongodb://$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT"
  cd /home && kpm restore
  echo "MONGO_CONNECTION $connection"
  MONGO_CONNECTION=$connection k kestrel
}

main() {
  set +e
  set -o pipefail

  case "$1" in
  *)               kestrel_cli $@;;
  esac
}

main "$@"
