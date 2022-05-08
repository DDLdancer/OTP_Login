#!/usr/bin/env bash
BASEDIR=$(dirname "$0")

PASSWD="tf0XB@pku"
TOTP=$(python3 $BASEDIR/mintotp.py)
SERVER="$1"

expect "$BASEDIR/wmlogin.exp" "$SERVER" "$PASSWD" "$TOTP"
