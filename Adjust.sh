#!/bin/bash

# Contributions are not a good factor of how much someone has worked
# Just fill all the boxes in.
# Read this first: https://blog.jcoglan.com/2013/11/15/why-github-is-not-your-cv/

adjust() {
	date -d "$1" +%s | xargs -I% sudo date -s "@%"
	echo "$RANDOM" | tee nonce
	git add nonce
	git commit -am "adjusting nonce"
}

adjust "29 June 2013"

for i in $(seq 0 1789); do
	echo $i
	adjust "+ 1 days"
done
