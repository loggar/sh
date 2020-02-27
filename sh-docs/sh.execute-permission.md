# sh file permission

```
loggar@DESKTOP-GS3ACTS:~/workspace/sh/src/script-test$ ls -l test.2.sh
-rw-r--r-- 1 loggar loggar 33 Feb 27 13:58 test.2.sh

loggar@DESKTOP-GS3ACTS:~/workspace/sh/src/script-test$ ./test.2.sh
bash: ./test.2.sh: Permission denied

loggar@DESKTOP-GS3ACTS:~/workspace/sh/src/script-test$ chmod 755 test.2.sh

loggar@DESKTOP-GS3ACTS:~/workspace/sh/src/script-test$ ls -l test.2.sh
-rwxr-xr-x 1 loggar loggar 33 Feb 27 13:58 test.2.sh

loggar@DESKTOP-GS3ACTS:~/workspace/sh/src/script-test$ ./test.2.sh
abc123
```
