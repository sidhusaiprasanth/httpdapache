# **SED Command Examples**

```bash
cat hello    # Shows content in hello 

Name Country Age Gender
Sidhu India 31 Male
Achu India 26 Female
sunny Srilanka 23 Male
Inny Andaman 24 Male
Sridevi Pakistan 51 Female
Venu Afganistan 53 Male
Heyyy India 31 Male
New India 31 Male
Sasfg India 31 Male

sed -n '3p' hello        # Print only the third line from the hello file

sed -n '$p' hello   # Print only last line

Sasfg India 31 Male


sed -n '/India/p' hello    # Shows all India entries lines
Sidhu India 31 Male
Achu India 26 Female
Heyyy India 31 Male
New India 31 Male
Sasfg India 31 Male



sed -n -e '2p' -e '7p' hello    # USING multiple expresssions
Sidhu India 31 Male
Venu Afganistan 53 Male



sed -n -e '/India/p' -e '/Srilanka/p' hello     # Shows lines containing India and srilanka
Sidhu India 31 Male
Achu India 26 Female
sunny Srilanka 23 Male
Heyyy India 31 Male
New India 31 Male
Sasfg India 31 Male




sed 's/Sidhu/mental/g' hello     # Replace sidhu with mental everywhere of the file           
Name Country Age Gender
mental India 31 Male
Achu India 26 Female
sunny Srilanka 23 Male
Inny Andaman 24 Male
Sridevi Pakistan 51 Female
Venu Afganistan 53 Male
Heyyy India 31 Male
New India 31 Male
Sasfg India 31 Male


sed '2 s/India/Myanmar/g' hello  # Only Replace India in 2nd line
Name Country Age Gender
Sidhu Myanmar 31 Male
Achu India 26 Female
sunny Srilanka 23 Male
Inny Andaman 24 Male
Sridevi Pakistan 51 Female
Venu Afganistan 53 Male
Heyyy India 31 Male
New India 31 Male
Sasfg India 31 Male




sed -i '2! s/India/Myanmar/g' hello         # Replace and insert into file India with Myanmar except in 2 line
                                                                                                                                                 
┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ cat hello                       
Name Country Age Gender
Sidhu India 31 Male
Achu Myanmar 26 Female
sunny Srilanka 23 Male
Inny Andaman 24 Male
Sridevi Pakistan 51 Female
Venu Afganistan 53 Male
Heyyy Myanmar 31 Male
New Myanmar 31 Male
Sasfg Myanmar 31 Male




sed '/Myanmar/ w newfile' hello     # Search Myanmar lines and send to different file named newfile
Name Country Age Gender
Sidhu India 31 Male
Achu Myanmar 26 Female
sunny Srilanka 23 Male
Inny Andaman 24 Male
Sridevi Pakistan 51 Female
Venu Afganistan 53 Male
Heyyy Myanmar 31 Male
New Myanmar 31 Male
Sasfg Myanmar 31 Male
                                                                                                                                                 
┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ ll
total 8
-rw-r--r-- 1 sidhu sidhu 226 Aug 26 00:02 hello
-rw-r--r-- 1 sidhu sidhu  87 Aug 26 00:11 newfile
                                                                                                                                                 
┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ cat newfile 
Achu Myanmar 26 Female
Heyyy Myanmar 31 Male
New Myanmar 31 Male
Sasfg Myanmar 31 Male




sed '/Myanmar/d' hello          # Delete lines with Myanmar
Name Country Age Gender
Sidhu India 31 Male
sunny Srilanka 23 Male
Inny Andaman 24 Male
Sridevi Pakistan 51 Female
Venu Afganistan 53 Male



sed -i '/^$/d' hello             # This is to delete empty lines in a file
                                                                                                                                                 
┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ cat hello    
Name Country Age Gender
Sidhu India 31 Male
Achu Myanmar 26 Female
sunny Srilanka 23 Male
Inny Andaman 24 Male
Sridevi Pakistan 51 Female
Venu Afganistan 53 Male
Heyyy Myanmar 31 Male
New Myanmar 31 Male
Sasfg Myanmar 31 Male








```