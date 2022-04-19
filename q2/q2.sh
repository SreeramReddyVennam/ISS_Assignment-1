cat -n $1 | sort -uk2 | sort -nk1 | cut -f2- | awk NF | sed -r "s/(^.*\.)(.*)/\2 once said, \"\1\"/g" | sed -r "s/^..//" > "speech.txt"
