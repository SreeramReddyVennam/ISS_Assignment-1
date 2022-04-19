touch speech.txt
cat $1 | while read line
do
    if [[ -z $line ]]
    then
        echo >> speech.txt
        continue
    fi
    echo $line | awk -F "~" '{print $2,"once said,","\x22"$1"\x22"}' >> speech.txt
done
