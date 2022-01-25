#!/bin/bash

echo "Hi! student"
echo "use parameter run_ws for start nginx service or another command for run it"

if [[ $# -eq 0 ]]; then
  exit 0
fi
prm=$1
case $prm in
run_ws)
  echo "WebServer will be run!" && \
  exec /usr/sbin/nginx -g "daemon off;"
  ;;
*)
  exec "$@"
  ;;
esac

