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
