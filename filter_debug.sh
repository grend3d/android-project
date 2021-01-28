#!/bin/sh

adb logcat $@ 2>&1 | grep -e 'SDL' -e 'libc' -e 'DEBUG' -e 'GL' -e 'Audio' -e 'audio'
