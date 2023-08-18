## **Passwordless Authentication Setup**

# **CLIENT SIDE**

> **Login as user from which you need to access server**
> 
> **Run below command**
> **Generate key pair from Client side**

```bash
ssh-keygen -t rsa -b 4096
```

> **We get two files id_rsa(private key) and id_rsa.pub(public key)**

> **Make sure Private key(id_rsa) has 600 permissions**


```bash
cd ~                # Goes to user home folder
chmod 700 .ssh      # Make sure .ssh has 700 permissions
cd .ssh             # Switch to .ssh folder
chmod 600 id_rsa    #Only owner should have permissions so making 600 here
cat id_rsa.pub     # Copy this public key content to server side
```

#### **After completing SETUP server Side also come back to client side to login to server**

```bash
ssh -i /home/$USER_NAME/.ssh/id_rsa $USER_NAME@IP_ADDRESS     # Login to server from client
```




---


# **SERVER SIDE**

> **login to the user to whom you will connect from client side**

> **Go to home folder of the user logged in**

```bash
mkdir .ssh

chmod 700 .ssh

cd .ssh
```



> **Create a file authorized_keys and copy client server generated public key id_rsa.pub content into this file/ If already some content is present append to existing content**

```bash
vim authorized_keys   # Copy the public key from Client side here i.e, id_rsa.pub content
chmod 600 authorized_keys
```

> Make sure authorized_keys file has proper permissions mostly 600




