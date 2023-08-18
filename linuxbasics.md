## **Linux Basics Commands**

```bash
ls -l    # Refers to list / Long listing of files in the folder

ls -la    # Long listing of files along with hidden files

pwd       # Refers to Present Working Directory Shows in which directory we are present in filesystem

cd        # Refers to Change Directory 

touch     # Creates an Empty File

cat       # To view CONTENT inside a file

mkdir     # Used to create a Directory

mkdir -p dir1/dir2/dir3   # Creates dir1 first and dir2 will be created inside dir1, and later dir3 inside dir2

cd ..    # Go back one folder / Go to parent folder from present folder

rmdir    # Remove Directory if it is empty

rm -rf   # Force remove the directory and files inside it USE WITH CAUTION

cp $SOURCE_PATH/$FILENAME $DESTINATION_PATH/  # To Copy file $FILENAME from $SOURCE_PATH folder to $DESTINATION_PATH folder

cp -R  $SOURCE_PATH/ $DESTINATION_PATH/ # To copy entrire Directory structure along with contents inside Directory we use -R

cal      # Shows the calender

time     # time

datetime  # shows time and timezone

date       # Shows date

uptime     # Shows the time from when server is up from last restart

whoami     # Check the user with whom we logged in server

```

----------


## **Intermediate Commands**

```bash
hostnamectl set-hostname {name-to-server}    # To set hostname to a server we be effective from next login

vim /etc/localtime   
ln -sf /usr/share/zoneinfo/$TIMEZONE /etc/localtime       # To change time zone on the server

timedatectl set-timezone "Asia/Kolkata"   # To set a Timezone

tail -3 $FILENAME   # To view last 3 lines in the $FILENAME

head -3 $FILENAME   # To view first 3 lines in the $FILENAME

tail -n $FILENAME   # View last n lines


tail -f $FILENAME   # To view live logs/data entering into this file


```
---



## **VI Commands**

```bash
vim $filename  # To edit content in a file

ESC            # Go to Command mode to enter commands

:w             # To save a file
:q             # To quit a file

i              # Goes to insert mode before cursor
a              # Insert after cursor
dd             # Delete present entire line
yy             # Copy the present line
3yy            # Copy this line and next two line
p              # Paste in the next line whatever was copied before
yw             # Keep cursor under the word to copy press yw to copy that word

Shift + g     # Go to the End of the file
Shift + $     # Go to the End of line
gg            # Go to the TOP of the file

/$WORD        # Searches for this word after '/' in entire file

:%s/$OLDWORD/$NEWWORD  # Replaces OLDWORD with NEWWORD wherever it is present this file

```

---


## **User and Group Related Commands** 

```bash
useradd $USERNAME    # To create a user in the server

passwd $USERNAME     # To change password to a user

groupadd $GROUPNAME   # To add a group

usermod -a -G $GROUPNAME $USERNAME  # To add a $USER to a $GROUPNAME

usermod -g $GROUPNAME $USERNAME   # To Change default $GROUPNAME in which files and folders are created when $USERNAME  creates them



```
---


## **IMPORTANT files to Remember**

```bash
cat /etc/passwd   # Shows all users related details

cat /etc/group    # Shows all groups related details

cat /etc/shadow   # Shows all Passwords related details for all users in encrypted format

cat /etc/ssh/sshd_config  # Shows all SSH service related configurations

```
## **/etc/passwd**
![/etc/passwd](https://images.squarespace-cdn.com/content/v1/5a01100f692ebe0459a1859f/1603347459833-GSR76P31T020NK97YV4B/BSY+Security+Class+Diagrams+-+_etc_shadow+%28L%29.jpg)

## **/etc/shadow/**

![/etc/shadow](https://linuxopsys.com/wp-content/uploads/2022/02/shadow-file-format-022022-01.png)
---


## **Permissions to files and folders**

```bash
chmod 755 $FILE_NAME   # Give Permissions to a file

chmod -R 755 $FILE_NAME  # Give permissions to Directory and also whatever present inside it

chown $OWNER_NAME:$GROUP_NAME $FILENAME  # To change owner name and group name to a existing file

chgrp $GROUPNAME $FILENAME    # To change $GROUPNAME of a existing file


```


![permissions](https://www.booleanworld.com/wp-content/uploads/2018/04/classes.png)



![permissnew](https://miro.medium.com/v2/resize:fit:1156/1*TtAxvfdEhFrFMrItvOqCrg.gif)


![neww](https://www.devopsschool.com/blog/wp-content/uploads/2022/09/chmod-linux-example-1.jpg)

---



## **Process and network related**


```bash
ps -ef     # List all processes
```

![ps-ef](https://s0.cyberciti.org/images/faq/2013/05/ps-aux-pidof-demo.png)




```bash
netstat -tulpn   # List all ports listening on server
```


![netstat -tulpn](https://www.net7.be/assets/images/news/netstat_output.png)
