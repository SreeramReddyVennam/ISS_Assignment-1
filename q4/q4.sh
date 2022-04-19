nums=(`echo $1 | awk -v OFS=" " -F "," '{$1=$1}1'`)

for (( i=0 ; i < ${#nums[*]} ; i++ ))
do
    for (( j=i+1 ; j < ${#nums[*]} ; j++ ))
    do
        if [[ ${nums[i]} -gt ${nums[j]} ]]
        then
            # swap then
            tmp=${nums[i]}
            nums[i]=${nums[j]}
            nums[j]=$tmp
        fi
    done
done

for i in "${nums[*]}"
do
    echo -n "$i "
done
echo
