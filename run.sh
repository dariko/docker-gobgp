#!/bin/bash

if [ -v GOBGPD_CONF ]
then
cat <<<$GOBGPD_CONF > /gobgpd.conf
fi

gobgpd -f /gobgpd.conf $*
