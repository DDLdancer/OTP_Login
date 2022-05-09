#!/usr/bin/env bash
set -e

# Start reading argument from second place
OPTIND=2
while getopts ":k" opt; do
	case $opt in
    k)
			k=true
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2 && exit 1
      ;;
  esac
done

BASEDIR=$(dirname "$0")
SERVER="$1" # Server name is always the first argument
source "$BASEDIR/$SERVER.param"

# Get TOTP key
TOTP=$(python3 "$BASEDIR"/mintotp.py "$TOTP_KEY")

if [ "$k" = true ] ; then
	echo "$TOTP"
else
	expect "$BASEDIR/login.exp" "$SERVER" "$PASSWD" "$TOTP"
fi
