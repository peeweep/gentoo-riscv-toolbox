#!/bin/bash

# keywords="riscv loong"
keywords="riscv"
package=$1
for keyword in ${keywords}; do
  for package in  $(cat /var/lib/portage/world); do \
    if [[ x$(equery m ${package} | grep "${keyword}"  | wc -l ) =  x"0" ]] ; then
      echo ${package}
    fi
  done
done
