my_array=(foo bar)
my_array+=(baz)
echo "${my_array[@]}"

my_array2=(foo bar)
my_array2+=(baz foobar)
echo "${my_array2[@]}"

# To add elements to an associative array, we are bound to specify also their associated keys: 
declare -A my_array3

# Add single element
my_array3[foo]="bar"

# Add multiple elements at a time
my_array3+=([baz]=foobar [foobarbaz]=baz)
