# --- Enabling sudo
# --- After installing and logging in, you will find that the default user does not have sudo privileges. Open a terminal and use the following commands to enable it.
# --- You will need to restart for the changes to take place.
set USERNAME=`whoami`
su -p
/usr/sbin/usermod -aG sudo $USERNAME

#############

# --- Clipboard Sharing
# --- Install spice-vdagent and reboot to enable clipboard sharing.
sudo apt install spice-vdagent

#############

# --- Disable swap
sudo swapoff -a
sudo sed -i.bak '/\sswap\s/d' /etc/fstab