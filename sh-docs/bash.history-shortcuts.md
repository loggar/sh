# Bash history shortcuts

1. The "last argument" one: !\$

```
$ mv /path/to/wrongfile /some/other/place
mv: cannot stat '/path/to/wrongfile': No such file or directory

$ mv /path/to/rightfile !$
mv /path/to/rightfile /some/other/place
```

2. The "nth argument" one: !:2

```
$ tar -cvf afolder afolder.tar
tar: failed to open

$ !:0 !:1 !:3 !:2
tar -cvf afolder.tar afolder
```

3. The "all the arguments" one: !:1-\$

```
$ grep '(ping|pong)' afile

$ egrep !:1-$
egrep '(ping|pong)' afile
ping
```

4. The "last but n" one: !-2:\$

```
$ mv /path/to/wrongfile /some/other/place
mv: cannot stat '/path/to/wrongfile': No such file or directory
$ ls /path/to/
rightfile

$ mv /path/to/rightfile !-2:$
mv /path/to/rightfile /some/other/place
```

5. The "get me the folder" one: !\$:h

```
$ tar -cvf system.tar /etc/system
 tar: /etc/system: Cannot stat: No such file or directory
 tar: Error exit delayed from previous errors.

$ cd !$:h
cd /etc
```

6. The "the current line" one: !#:1

```
$ cp /path/to/some/file !#:1.bak
cp /path/to/some/file /path/to/some/file.bak
```

7. The "search and replace" one: !!:gs

```
$ echo my f key doef not work
my f key doef not work

$ !!:gs/f /s /
echo my s key does not work
my s key does not work

$ !!:gs/does/did/
echo my s key did not work
my s key did not work

```

Test them out

```
$ ping !#:0:gs/i/o
$ vi /tmp/!:0.txt
$ ls !$:h
$ cd !-2:h
$ touch !$!-3:$ !! !$.txt
$ cat !:1-$

```
