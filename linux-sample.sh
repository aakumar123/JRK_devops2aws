#! /bin/bash

# Create a new user
if gentent passwd "user1"; then
  echo "user alredy exsits"
else
  sudo adduser user1
  echo "new user add successfully"
fi

# create a new group

if gentent group "devops"; then
 echo "alredy group exsists"
else
 sudo groupadd devops
 echo "new grou added successfully"
fi

# add the user to group
sudo usermod -ag devops user1
echo " user as added to group successfully"

# adding new directory in to a user
if [ -d "/home/user1/dev" ]; then
  echo " alredy directory will exsists"
else
  sudo mkdir -p "/home/user1/dev"
  echo " new directory as created successfully"
fi

# Giving the full permission for the directory
sudo chmod 777 /home/user1/dev

#adding the new file into a directory
if [ -f "/home/user1/dev/sample.txt" ]; then
  echo "file alredy exsists"
else
  sudo cat << EOF > /home/user1/dev/sample.txt
   Hi all welcome to Linux Scripting;
EOF
fi

# Adding the user level full permissions
sudo chmod 700 /home/user1/dev/sapmle.txt

# Check the application will exsists or not
if which "httpd"; then
  echo "httpd application already exsists"
else
  sudo yum install httpd -y
  echo "Httpd application installed sucessfully"
fi

# Check the httpd service started or not
if systemctl is-active --quite "httpd" ; then
  echo "httpd service already started"
else
  sudo systemctl start httpd
  echo "httpd service stated successfully"
fi

sudo cat << EOF > /var/www/html/index.html
<h1> Hi All My Httpd Application On Live </h1>
EOF
