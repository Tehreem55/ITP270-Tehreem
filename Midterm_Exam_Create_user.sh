#! /bin/bash

#Creating 2 users using for loop to repeat the add user process twice

for u in user13  user14;
do
sudo useradd -m $u
echo "$u:Password1" | sudo chpasswd
done

sudo tail -n2 /etc/passwd

#Taking 2 inputs username and password

read -p "Enter the username: " USERNAME
read -p "Enter the account password: " PASSWORD

#Validate the password at least 8 characters long using a while loop and if-else condition
echo
echo "No user will be created unless the password is 8 characters long" 
while read line;
read -p "Enter the username to create: " USERNAME
read -p "Enter the password to use for the account: " PASSWORD
Count="${#PASSWORD}"
do
if [ "$Count" -ge 8 ]
then
        echo "You're all set! Strong Password"
        exit 1
else
        echo "Opps! Weak password try again"
fi
done

sudo useradd $USERNAME
sudo usermod -p ${PASSWORD} ${USERNAME}

#Print the new user's name and password 

read -p "Enter new username: " USERNAME12
echo $USERNAME12
read -p "Enter password: : PASSWORD
echo $PASSWORD 

sudoadd useradd $USERNAME12
sudo usermod -p ${PASSWORD} ${USERNAME12}
