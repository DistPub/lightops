sudo ufw status
sudo ufw default deny
sudo ufw allow 22
sudo ufw allow 53
sudo ufw disable
echo "y" | sudo ufw enable
sudo ufw status
