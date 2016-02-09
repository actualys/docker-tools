#!/bin/bash

set -e

if [ ! -f /etc/ldap/slapd.d/cn=config.ldif ]; then
  /install.sh
fi

exec /usr/sbin/slapd -F /etc/ldap/slapd.d -h "ldapi:/// ldap:/// ldaps:///" -d stats

