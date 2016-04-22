#!/bin/bash

mkdir tmp 2>/dev/null

for n in {1..256}; do
    sed -e "s/@@LVNAME@@/lv_aplo_$n/"   \
        -e "s/@@LVDIR@@/disk$n/"        \
        -e "s/@@VOLNAME@@/aplovol$n/"   \
        vol_create.template  > tmp/vol_create_$n.conf
    gdeploy -c tmp/vol_create_$n.conf
    rm -f tmp/vol_create_$n.conf
done
