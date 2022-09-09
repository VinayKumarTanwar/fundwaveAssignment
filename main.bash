#!/bin/bash
function version_gt() { test "$(echo "$@" | tr " " "n" | sort -V | head -n 1)" != "$1"; }

echo "Enter versions numner"
read current_version

file=$(cat versions.txt)

for ver in $file
do
if version_gt $ver $current_version
then echo -e "$ver\n"
done < $file
