# **CUT Commands**


```bash

┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ cut -c1 hello    # Prints only first charecter of every line
N
S
A
s
I
S
V
H
N
S



┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ cut -d, -f 1 hello.back        # Used to get first column,    -d, is for delimiter and -f is for which field
Name
Sidhu
Achu
sunny
Inny
Sridevi
Venu
Heyyy
New
Sasfg




┌──(sidhu㉿sidhumachine)-[~/Downloads/experiment]
└─$ cut -d, -f 1- hello.back --output-delimiter=" | "      # This is to change , delimiter to | as delimiter
Name | Country | Age | Gender
Sidhu | India | 31 | Male
Achu | Myanmar | 26 | Female
sunny | Srilanka | 23 | Male
Inny | Andaman | 24 | Male
Sridevi | Pakistan | 51 | Female
Venu | Afganistan | 53 | Male
Heyyy | Myanmar | 31 | Male
New | Myanmar | 31 | Male
Sasfg | Myanmar | 31 | Male





```