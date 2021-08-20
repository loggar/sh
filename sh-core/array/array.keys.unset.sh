declare -A userdata='([pass]="8eab07eb620533b083f241ec4e6b9724"
  [name]="seth"
  [login]="1583362192" )'

unset userdata[pass]

typeset -A
  declare -A BASH_ALIASES='()'
  declare -A BASH_CMDS='()'
  declare -A userdata='([name]="seth"
    [login]="1583362192" )'

echo "${userdata[*]}"

unset "userdata[*]"
echo "${userdata[*]}"
