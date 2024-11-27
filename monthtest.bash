#!/bin/bash -xv
#SPDX-FileCopyrightText: 2024 Yukimi Miyahara
#SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### NORMAL INPUT ###

out=$(echo 1 | ./month)
[ "${out}" = January ] || ng "$LINENO"

out=$(echo 2 | ./month)
[ "${out}" = February ] || ng "$LINENO"

out=$(echo 3 | ./month)
[ "${out}" = March ] || ng "$LINENO"

out=$(echo 4 | ./month)
[ "${out}" = April ] || ng "$LINENO"

out=$(echo 5 | ./month)
[ "${out}" = May ] || ng "$LINENO"

out=$(echo 6 | ./month)
[ "${out}" = June ] || ng "$LINENO"

out=$(echo 7 | ./month)
[ "${out}" = July ] || ng "$LINENO"

out=$(echo 8 | ./month)
[ "${out}" = August ] || ng "$LINENO"

out=$(echo 9 | ./month)
[ "${out}" = September ] || ng "$LINENO"

out=$(echo 10 | ./month)
[ "${out}" = October ] || ng "$LINENO"

out=$(echo 11 | ./month)
[ "${out}" = November ] || ng "$LINENO"


out=$(echo 12 | ./month)
[ "${out}" = December ] || ng "$LINENO"

### STRANGE INPUT ###

out=$(echo 0 | ./month)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo 13 | ./month)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo あ | ./month)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo A | ./month)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./month)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
