#!/bin/bash

MUNIN_CONFIGURATION_FILE=/etc/munin/munin-node.conf
MUNIN_LOG_FILE=/var/log/munin/munin-node-configure.log
MUNIN_LIBDIR=/usr/share/munin

ln -s /usr/share/munin/plugins /plugins

if [ ! -z "$ALLOW" ]; then
    echo $ALLOW >> $MUNIN_CONFIGURATION_FILE
fi

/etc/init.d/munin-node start
tailf $MUNIN_LOG_FILE
