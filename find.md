# **FIND EXAMPLES**

## Find size

> **find [path] -size [+/-size]**

> _**M for MB, G for GB, k for KB , c for bytes**_

```bash
find . -size +20k
```

## Find Type of file

> **find . -type f/d/l/b** 

```bash
find . -type l
```

## Find based on name

> **find . -name [exact_match_ofname]**

```bash
find . -name zstd

find . -iname zstd  # To ignore case senitivity in search with exact name match
```

## Find files basis of user created

> **find [path] -user root**

```bash
find . -user root
```

## Find Files based on their permissisons

> **find [path] -perm /u=r**

> **_find [path] -perm 777_**

```bash
find . -perm /u=x

find . -perm 777
```

## Find files starting with a

```bash
 find . -iname "a*"
./alias
./audit2allow
./audit2why
./ac
./at
./atq
./atrm
./attr
./awk
./aws
./aws.cmd
./acpi_listen
./addr2line
./ar
./as
./arch
./aws_bash_completer
./aws_completer
./aws_zsh_completer.sh
./arpaname
./aulast
./aulastlog
./ausyscall
./auvirt
./arping
./amazon-ssm-agent
./apropos.man-db
./apropos
```

## Find all empty files

```bash
find . -empty
```

## Find all files that are created after particular a1.txt file

```bash
find . -newer a1.txt
```

## Find empty files and delete them from present directory

```bash
find . -empty -exec rm -rf {} \;

find . -name a1.txt -exec rm -rf {} \;
```

## Find files between 1 - 50 MB

```bash
find . -size +1M -size -50M 
```

## Find files based on modified time 

```bash
find . -mtime +6  # More than 6 days older

find . -mtime -6  # Less than 6 Days older

find . -mtime 6  # Exactly 6 Days older
```