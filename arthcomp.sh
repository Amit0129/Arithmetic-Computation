read -p "Enter 1st number: " a
read -p "Enter 2nd number: " b
read -p "Enter 3rd number: " c
echo "Three numbers are: $a $b $c"

first_computation=$(( a + b * c ))
second_computation=$(( a * b + c ))
third_computation=$(( c + a / b ))
fourth_computation=$(( a % b + c ))
echo "$a + $b * $c = $first_computation"
echo "$a * $b + $c = $second_computation"
echo "$c + $a / $b = $third_computation"
echo "$a % $b + $c = $fourth_computation"

declare -A result
result[first_computation]=$first_computation
result[second_computation]=$second_computation
result[third_computation]=$third_computation
result[fourth_computation]=$fourth_computation

echo ${result[@]}


index=0
for computation in ${!result[@]}
do
    echo "$computation = ${result[$computation]}"
    array[index++]=${result[$computation]}
done
echo ${array[@]}
