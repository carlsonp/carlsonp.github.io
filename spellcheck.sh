#!/bin/bash
# https://blog.eleven-labs.com/en/how-to-check-the-spelling-of-your-docs-from-travis-ci/
# sudo apt install aspell aspell-en

# https://stackoverflow.com/questions/12137431/test-if-a-command-outputs-an-empty-string

# only search three folders (includes, site, layouts) since travis-ci downloads a bunch of stuff we don't want
# to be recursing over those
for f in $(find '_includes' '_site' '_layouts' -name '*.html')
do
	echo "Checking file: $f"
	# -H is for running on HTML files
	check=$(cat $f | aspell --lang=en -H --ignore-case --personal=./.aspell.en.pws list)
	if [[ $? != 0 ]]; then
		echo $check
		echo "Unable to run spellcheck"
		exit 1
	elif [[ $check ]]; then
		echo $check
		echo "Spelling error(s) found"
		exit 1
	fi
done

echo "No spelling errors found"
exit 0

