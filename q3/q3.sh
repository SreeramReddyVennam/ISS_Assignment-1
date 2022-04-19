read file
echo $(ls -l $file | awk '{print $5}')
echo $(cat $file | wc -l)
echo $(cat $file | wc -w)

i=1
cat $file | while read line
do
    echo "Line No:$i-Count of Words:$(echo $line | wc -w)"
    let i++
done

cat -n randfile | grep -wo '[[:alnum:]]\+' | cat -n | sort -k2 | uniq -cdf1 | sort -nk2 | awk '{print "Word:" $3 "-Count of repetition:" $1}'
