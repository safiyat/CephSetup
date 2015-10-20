#Make password-less sudo access
sudo chmod +w /etc/sudoers
echo "ALL ALL=(ALL) NOPASSWD:ALL" | sudo tee --append /etc/sudoers
sudo chmod -w /etc/sudoers
