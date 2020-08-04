#!/usr/bin/env bash

apt autoremove -y 2&>1 >/dev/null
apt clean -y 2&>1 >/dev/null
apt autoclean -y 2&>1 >/dev/null

# Clear cache
rm -rf \
  /var/lib/apt/lists/* \
  /tmp/*

find /var/log -type f | while read f; do
    echo -ne '' > ${f} 2&>1 > /dev/null || true;
done

#chmod +x /docker/entrypoint.sh

#if [ "$(find /docker/entrypoint -maxdepth 1 -type f  -name '*.sh')" ]; then
#    for file in /docker/entrypoint/*.sh; do
#        chmod +x ${file} || true;
#    done
#fi
