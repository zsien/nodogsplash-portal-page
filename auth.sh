#!/bin/sh

# $<BinAuth> auth_client <client_mac> '<username>' '<password>'

auth_type="$1"
client_mac="$2"
client_username="$3"
client_password="$4"

password="4008208820"
second="7200"

check_password() {
  if [ "${client_password}" = "${password}" ]; then
    echo "${second}"
    return 0
  fi

  return 1
}

case $auth_type in
  auth_client)
    check_password 
    return $?
  ;;
esac
