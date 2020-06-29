declare -A userdata
userdata[name]=seth
userdata[pass]=8eab07eb620533b083f241ec4e6b9724
userdata[login]=`date --utc +%s`

echo "${userdata[name]}"
echo "${userdata[login]}"
echo "${userdata[*]}"

typeset -A
  declare -A BASH_ALIASES='()'
  declare -A BASH_CMDS='()'
  declare -A userdata2='([pass]="8eab07eb620533b083f241ec4e6b9724"
    [name]="seth"
    [login]="1583362192" )'

echo "${BASH_ALIASES[*]}"
echo "${BASH_CMDS[*]}"
echo "${userdata2[*]}"
