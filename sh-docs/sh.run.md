# bash shell script - hello world

## user bin directory

```sh
cd ~      # this takes us to /Users/tania
mkdir bin # this creates /Users/tania/bin

export PATH=$PATH:/Users/username/bin

which bash # confirm where the bash interpreter is located
```

## the script, `hello-world.sh`

```sh
#!/bin/bash

echo Hello, World!
```

## Run the script

```
./hello-world.sh

-bash: hello-world: command not found
```

We have to make it an executable file by changing the permissions.

```
chmod u+x hello-world.sh
```

```
./hello-world.sh

# or

bash ./hello-world.sh
```

## Run bash script with git bash (windows)

```
C:\_dev\git\bin\bash.exe .\git.branch.status.sh

C:\_dev\git\bin\bash.exe .\git.is-workdir.up-to-date.sh

```
