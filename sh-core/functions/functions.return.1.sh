function myfunc()
{
    local  __resultvar=$1
    local  myresult='some value'
    eval $__resultvar="'$myresult'"
}

myfunc result
echo $result