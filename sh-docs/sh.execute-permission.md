# sh file permission

```
$ ls -l test.2.sh
-rw-r--r-- 1 loggar loggar 33 Feb 27 13:58 test.2.sh

$ ./test.2.sh
bash: ./test.2.sh: Permission denied

$ chmod 755 test.2.sh

$ ls -l test.2.sh
-rwxr-xr-x 1 loggar loggar 33 Feb 27 13:58 test.2.sh

$ ./test.2.sh
abc123
```

```
$ chmod 755 ./src

```