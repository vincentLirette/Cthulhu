#!/usr/bin/env bash
# This is a small script to manage the docker image/container faster.
action=$1;

if [[ $# -ne 1 ]]
then
    echo "*** Erreur: Nb arguments invalide";
    echo "Usage:";
    echo "cthulhu {build, start, stop, run}";
    exit 1;
fi

case $action in
    build)
      echo "Building Cthulhu"
      sudo docker build -t cthulhu .
      ;;
    start)
      echo "Starting Cthulhu"
      sudo docker start cthulhu
      ;;
	  stop)
		  echo "Stoping Cthulhu"
      sudo docker stop cthulhu
      ;;
    run)
      echo "Running Cthulhu in daemon mode"
      sudo docker run -d --name cthulhu cthulhu
      ;;
    *)
		  echo "***Erreur: Action inconnue";;
esac
