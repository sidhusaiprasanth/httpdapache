# **PIPE commands**

```bash

┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ ls -1 | wc -l  # Print no of files in directory
4


┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ cat names | sort | uniq         # Taking out uniq names , before we need sort it
Botchu
Hatchu
Sidhu
Sridevi
Venu
achu
inny
sunny





┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ ls | tee new | wc -l                   # tee command writes to file and shows data from a file at same time
5
                                                                                                                                                 
┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ cat new                
hello
hello.back
names
newfile
nmap.txt










```
