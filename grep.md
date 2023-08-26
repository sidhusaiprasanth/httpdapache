# GREP command


```bash

┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ grep Myanmar hello                      # Grep Myanmar present lines in hello file
Achu Myanmar 26 Female
Heyyy Myanmar 31 Male
New Myanmar 31 Male
Sasfg Myanmar 31 Male




┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ grep -i Myanmar hello              # Case sensitive
Achu Myanmar 26 Female
Heyyy Myanmar 31 Male
New Myanmar 31 Male
Sasfg Myanmar 31 Male




┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ grep -iv Myanmar hello                    # Print Everything except lines with Myanmar
Name Country Age Gender
Sidhu India 31 Male
sunny Srilanka 23 Male
Inny Andaman 24 Male
Sridevi Pakistan 51 Female
Venu Afganistan 53 Male






┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ grep -c Myanmar hello                      # To count how many times a particular word exists in a file
4





┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ grep -w Pakistan hello                      # To get the exact matches of a file
Sridevi Pakistan 51 Female




┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ grep -n Pakistan hello                     # Print line numbers where Pakistan is present
6:Sridevi Pakistan 51 Female



┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ grep -e India -e Pakistan hello            # To search multiple keywords
Sidhu India 31 Male
Sridevi Pakistan 51 Female






```