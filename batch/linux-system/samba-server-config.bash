# Install Samba - Ubuntu uses apt file manager, however you can adjust this if needed.
sudo apt-get install samba -y

# Check install
whereis samba

# Changes rules to allow for remote connection
sudo ufw allow samba

# Create a folder to share between devices
mkdir Sambashare

# Create user and password
sudo smbpasswd -a user

# Edit config file with nano
sudo nano /etc/samba/smb.conf
    # Add this to end of config file with nano:
    [Sambashare]
        path = /home/user/Desktop/Sambashare
        available = yes
        valid users = user
        read only = no
        writeable = yes
        browsable = yes
        public = yes

        # You may have to change stuff around to match your configuration, such as user and path. I added my shared directory folder, Sambashare, to Desktop so it's easy to find.

# Restart server
sudo service smbd restart

# Check status of server, it should say active (running) now.
sudo systemctl status smbd