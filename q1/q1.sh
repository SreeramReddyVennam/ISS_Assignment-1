cat -n $1 | sort -uk2 | sort -nk1 | cut -f2- | awk NF
