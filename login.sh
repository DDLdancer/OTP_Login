#!/usr/bin/env bash
set -e
SERVER="$1"
BASEDIR=$(dirname "$0")

source "$BASEDIR/$SERVER.param"

TOTP=$(python3 $BASEDIR/mintotp.py $TOTP_KEY)

expect "$BASEDIR/login.exp" "$SERVER" "$PASSWD" "$TOTP"
