# **AWK Command** 


```bash
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
                                                                                                                                                 
┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ awk '{print $2}' hello     # Prints only second column
Country
India
Myanmar
Srilanka
Andaman
Pakistan
Afganistan
Myanmar
Myanmar
Myanmar






┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ awk '{print $1,$NF}' hello       # Prints 1st and last Column
Name Gender
Sidhu Male
Achu Female
sunny Male
Inny Male
Sridevi Female
Venu Male
Heyyy Male
New Male
Sasfg Male






┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ awk '{print NR, $0}' hello        # To print line number and line
1 Name Country Age Gender
2 Sidhu India 31 Male
3 Achu Myanmar 26 Female
4 sunny Srilanka 23 Male
5 Inny Andaman 24 Male
6 Sridevi Pakistan 51 Female
7 Venu Afganistan 53 Male
8 Heyyy Myanmar 31 Male
9 New Myanmar 31 Male
10 Sasfg Myanmar 31 Male






┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ awk '{print NR ":" $2}' hello        # To print  along with delimiter :
1:Country
2:India
3:Myanmar
4:Srilanka
5:Andaman
6:Pakistan
7:Afganistan
8:Myanmar
9:Myanmar
10:Myanmar



┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ cat hello.back         
Name,Country,Age,Gender
Sidhu,India,31,Male
Achu,Myanmar,26,Female
sunny,Srilanka,23,Male
Inny,Andaman,24,Male
Sridevi,Pakistan,51,Female
Venu,Afganistan,53,Male
Heyyy,Myanmar,31,Male
New,Myanmar,31,Male
Sasfg,Myanmar,31,Male




┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ awk -F, '{print NR ":" $1}' hello.back     # If we have field seperator as ',' then we use -F as giving field seperator
1:Name
2:Sidhu
3:Achu
4:sunny
5:Inny
6:Sridevi
7:Venu
8:Heyyy
9:New
10:Sasfg




┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ awk '{if($3>25) print $0}' hello           # Using If condition to get Age > 25 , then print those lines
Name Country Age Gender
Sidhu India 31 Male
Achu Myanmar 26 Female
Sridevi Pakistan 51 Female
Venu Afganistan 53 Male
Heyyy Myanmar 31 Male
New Myanmar 31 Male
Sasfg Myanmar 31 Male



┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ awk '{if($1=="Sidhu"){$3=50} print $0}' hello    # Find sidhu and change his age and print those lines
Name Country Age Gender
Sidhu India 50 Male
Achu Myanmar 26 Female
sunny Srilanka 23 Male
Inny Andaman 24 Male
Sridevi Pakistan 51 Female
Venu Afganistan 53 Male
Heyyy Myanmar 31 Male
New Myanmar 31 Male
Sasfg Myanmar 31 Male





┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ awk '/Myanmar/ {print $0}' hello     # Find Myanmar and print those lines
Achu Myanmar 26 Female
Heyyy Myanmar 31 Male
New Myanmar 31 Male
Sasfg Myanmar 31 Male




┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ awk 'NR=="2",NR=="5" {print $0}' hello   # Print lines from 2 to 5 rows 
Sidhu India 31 Male
Achu Myanmar 26 Female
sunny Srilanka 23 Male
Inny Andaman 24 Male







```





