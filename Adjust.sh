#!/bin/bash

# Contributions are not a good factor of how much someone has worked
# Just fill all the boxes in.
# Read this first: https://blog.jcoglan.com/2013/11/15/why-github-is-not-your-cv/

adjust() {
    NEXTDATE=$(date -d "$LASTDATE")
	echo "$RANDOM" | tee nonce
	git add nonce
	git commit -am "$NEXTDATE"
    GIT_COMMITTER_DATE="Mon 20 Aug 2018 20:19:19 BST" git commit --amend --no-edit --date "$NEXTDATE"
    LASTDATE=$NEXTDATE
}

adjust "25 May 2018"

for i in $(seq 0 1789); do
	echo $i
	adjust "+ 1 days"
done
