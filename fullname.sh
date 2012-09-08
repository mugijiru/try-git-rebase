#!/bin/bash
# for Bash 4.0

declare -A fullnames
fullnames[ichiro]='Ichiro Suzuki'
fullnames[tomohiro]='Tomohiro TAIRA'
fullnames[norito]='Norito UEHARA'
fullnames[jiru]='Jiru MUGI'

function get_name()
{
  local fullname=${fullnames[$1]}
  if [ -n "$fullname" ]; then
    echo $fullname
  else
    echo "Not found"
  fi
}

get_name $1
