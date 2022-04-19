read name
echo $name | rev
echo $name | rev | tr a-z b-za | tr A-Z B-ZA
echo "$(echo ${name:0:$((${#name}/2))} | rev)${name:$((${#name}/2)):$((${#name}/2))}"
