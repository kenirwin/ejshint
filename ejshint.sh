#!/bin/sh

ejslint $1 2>&1 >/dev/null | xargs -I {} ./do-ejshint.sh {}