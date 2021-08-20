my_array=(foo bar baz)

for index in "${!my_array[@]}"; do echo "$index"; done


declare -A my_array2
my_array2=([foo]=bar [baz]=foobar)''
for key in "${!my_array2[@]}"; do echo "$key"; done
