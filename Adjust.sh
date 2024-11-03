#!/bin/bash

# Contributions are not a good factor of how much someone has worked
# Just fill all the boxes in.
# Read this first: https://blog.jcoglan.com/2013/11/15/why-github-is-not-your-cv/

adjust() {
    NEXTDATE=$(date -d "$1")
	echo "$RANDOM" | tee nonce
	git add nonce
	git commit -am "$NEXTDATE"
    GIT_COMMITTER_DATE="$NEXTDATE" git commit --amend --no-edit --date "$NEXTDATE"
    LASTDATE=$(date -d "$1" +%Y-%m-%d)
}

adjust "3 November 2024"

for i in $(seq 0 1789); do
	echo $i
	adjust "$LASTDATE + 1 days"
done
