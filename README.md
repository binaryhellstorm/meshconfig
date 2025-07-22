Automated installer for Meshtastic for Linux for NEBRA hat boards.

To run this installer, flash your Pi with Bookworm 64 bit using the Raspberry Pi iamger
For Device select "Raspberry Pi 3"
For OS choose "Raspberry Pi OS (other)" > Raspberry Pi OS Lite (64-Bit)

Choose your SD card

Under "Use OS Customisation" Select "Edit Settings"

Check "Set Hostname" and choose a network hostname for the Pi

Check "Set username and password" and set your login credentials 

Check "Set locale Settings" and choose your geographic region.

Under Services select "Enable SSH" and "Use password authentication"

Click Save

Image your SD card

Once imaged, install the SD card in the Pi and boot the unit. 

Connect to it via SSH, if on Windows use Putty https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html

If on Mac or Linux open a terminal and type "ssh user@hostname" substituing your username and hostname that you set earlier. 

Once connected to the Pi run the following command to download the installer from GIT:

wget https://github.com/binaryhellstorm/meshconfig/raw/refs/heads/main/mesh_installer.sh

Then run this command to enable execution privleges on the file you downloaded:

sudo chmod +x mesh_installer.sh

Then run this command to kick off the automated installer:

sudo ./mesh_installer.sh

The installer will run and you may occasionally be prompted to press enter to continue. When done the installer will say "Install completed now exiting"

Once this is done you will need to restart, as the installer will have enabled the SPI bus to allow the Pi to communicate with the NEBRA Hat.

After a reboot you should be able to open the Meshtastic app in a web browser. 

For reasons that are still unclear to me, you must first go to the Pi's IP in a browser after first install. So open https://IP:9443 replaceing the IP with your unit's IP or hostname. 

After that you can connect by by going to https://client.meshtastic.org/ and clicking New Connection>HTTP and then entering your devices hostname or it's IP, for example "https://192.168.1.20". Make sure to select the "Use HTTPS" option.

Once connected go to Config>Radio Config>LORA and choose your region. For the US you can use the US/915 region. 





