#!/bin/sh
set -e

sh -c "firebase --token=$FIREBASE_TOKEN $*"
