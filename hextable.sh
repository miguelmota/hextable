#!/bin/bash

function cell() {
  n="$1"
  hex=$(printf '%x' "$n" | awk '{print toupper($0)}')
  col=$(printf '%-2s 0x%-2s ' "$n" "$hex")
  printf "%s" "$col"
}

rows="10"
colwidth="10"
windowwidth="$(tput cols)"
cols="$(($windowwidth / $colwidth))"
maxrows="100"
maxcols="10"
rowadditions=( 100 90 40 23 15 10 7 4 3 1 )
if (( $cols > $maxcols )); then
    cols=$maxcols
fi
for i in $(seq 0 9); do
  if (( $cols == $i )); then
    rows="$(($rows + ${rowadditions[$i]}))"
  fi
done

if (( $rows > $maxrows )); then
    rows=$maxrows
fi

for i in $(seq 0 $(($rows-1))); do
  for j in $(seq 0 $(($cols-1))); do
    printf "%s" "$(cell $((($rows * $j) + $i)))"
  done
  printf "\\n"
done