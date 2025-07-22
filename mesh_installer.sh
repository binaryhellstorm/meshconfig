echo 'deb http://download.opensuse.org/repositories/network:/Meshtastic:/beta/Raspbian_12/ /' | sudo tee /etc/apt/sources.list.d/network:Meshtastic:beta.list
curl -fsSL https://download.opensuse.org/repositories/network:Meshtastic:beta/Raspbian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/network_Meshtastic_beta.gpg > /dev/null
sudo apt update
sudo apt-get -y upgrade
sudo apt install meshtasticd
sudo wget –O /etc/meshtasticd/config.d https://github.com/binaryhellstorm/meshconfig/raw/refs/heads/main/NebraHat_1W.yaml
sudo wget –O /etc/meshtasticd/ https://github.com/binaryhellstorm/meshconfig/raw/refs/heads/main/config.yaml
sudo wget –O /etc/meshtasticd/ https://github.com/binaryhellstorm/meshconfig/raw/refs/heads/main/config.txt
sudo cp /etc/meshtasticd/config.txt /boot/firmware/config.txt
echo "Install completed now exiting"
exit 0
