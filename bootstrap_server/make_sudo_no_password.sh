sudo chmod u+w /etc/sudoers
echo "" | sudo tee -a /etc/sudoers
echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers
sudo chmod u-w /etc/sudoers
