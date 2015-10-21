#Make password-less sudo access
sudo chmod +w /etc/sudoers
if [[ `sudo grep -c "^ *ALL *ALL *= *(ALL) *NOPASSWD *: *ALL" /etc/sudoers` -eq 0 ]]
then
    echo "ALL ALL=(ALL) NOPASSWD:ALL" | sudo tee --append /etc/sudoers > /dev/null
    echo "Added password-less SUDO access for all users."
fi
sudo chmod -w /etc/sudoers

