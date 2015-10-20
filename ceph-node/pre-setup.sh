#Make password-less sudo access
sudo chmod +w /etc/sudoers
sudo echo "ALL ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
sudo chmod -w /etc/sudoers
