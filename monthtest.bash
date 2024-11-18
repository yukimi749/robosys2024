#!/bin/bash -xv
#SPDX-FileCopyrightText: 2024 Yukimi Miyahara
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### NORMAL INPUT ###

out=$(echo 11 | ./date)
[ "${out}" = November ] || ng "$LINENO"

### STRANGE INPUT ###

out=$(echo 13 | ./date)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo あ | ./date)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./date)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
