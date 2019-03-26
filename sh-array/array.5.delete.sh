my_array=(foo bar baz)
unset my_array[1]
echo ${my_array[@]}

echo ${!my_array[@]}

# The same thing it's valid for associative arrays:
declare -A my_array2
my_array2+=([foo]=bar [baz]=foobar)
unset my_array2[foo]
echo ${my_array2[@]}

# Deleting an entire array, it's even simpler: we just pass the array name as an argument to the unset command without specifying any index or key:
unset my_array
echo ${!my_array[@]}
