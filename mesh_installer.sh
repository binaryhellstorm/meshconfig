echo 'deb http://download.opensuse.org/repositories/network:/Meshtastic:/beta/Raspbian_12/ /' | sudo tee /etc/apt/sources.list.d/network:Meshtastic:beta.list
curl -fsSL https://download.opensuse.org/repositories/network:Meshtastic:beta/Raspbian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/network_Meshtastic_beta.gpg > /dev/null
sudo apt update
sudo apt install meshtasticd
sudo apt-get upgrade -y
wget –O /etc/meshtasticd/config.d https://github.com/binaryhellstorm/meshconfig/blob/main/NebraHat_1W.yaml
wget –O /etc/meshtasticd/ https://github.com/binaryhellstorm/meshconfig/blob/main/config.yaml
wget –O /boot/firmware/ https://github.com/binaryhellstorm/meshconfig/blob/main/config.txt
echo "Install completed now exiting"
exit 0



