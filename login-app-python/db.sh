#! /bin/bash


echo "Update system..."
sudo apt update -y
echo "System updated!"

echo "Installing mongodb..."
sudo apt install -y mongodb
echo "MongoDB successfully installed!"

echo "Modifying mongodb config file..."
sudo mv -f /tmp/mongodb.conf /etc
echo "MongoDB config file has been successfully updated"

echo "MongoDB will now start"
sudo systemctl stop mongodb

sudo systemctl start mongodb
echo "Successfully started MongoDB!"

