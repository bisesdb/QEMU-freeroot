sudo apt update
sudo apt install tasksel -y
sudo tasksel install ubuntu-desktop # Or xfce4 if you prefer a lighter environment
# For Xfce4, you would use:
sudo apt install xfce4 xfce4-goodies -y
sudo apt install xrdp -y
echo xfce4-session >~/.xsession
sudo nano /etc/xrdp/startwm.sh
# Check/edit this file to ensure it correctly executes the desktop session. 
# For Xfce, you might replace the existing line that says 'startkde' or 'startgnome' with:
# startxfce4
sudo systemctl enable xrdp
sudo service xrdp start
# Replace 'your_username' with the actual username you will use (e.g., 'root' or your primary user).
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null
echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list
sudo apt update
sudo apt install playit
sudo passwd 
#sudo dpkg --configure -a
