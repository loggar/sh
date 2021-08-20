my_array=(foo bar)

# Performing a for loop on it will produce the following result:
for i in "${my_array[@]}"; do echo "$i"; done

# When using *, and the variable is quoted, instead, a single "result" will be produced, containing all the elements of the array:
for i in "${my_array[*]}"; do echo "$i"; done