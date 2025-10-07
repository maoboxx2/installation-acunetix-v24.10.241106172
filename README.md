

<h1 align="center"> Acunetix-v24.10.241106172
</h1>

<p align="center"> Acunetix by Invicti Security is an application security testing tool built to help small & mid-size organizations around the world take control of their web security.
</p>

<p align="center"><img src="https://github.com/maoboxx2/installation-acunetix-v24.10.241106172/blob/main/acunetix-premium-v2.png">
 
<br></br>

## install config
```
wget -qO- https://github.com/maoboxx2/installation-acunetix-v24.10.241106172/blob/main/config.sh | sudo sh
```
## clone the repo
```
git clone https://github.com/maoboxx2/installation-acunetix-v24.10.241106172.git
```
```
cd Acunetix-v24.10.241106172
```
## download the acunetix
```
wget https://github.com/xiv3r/Acunetix-v24.10.241106172/releases/download/acunetix/acunetix_24.10.241106172_x64.sh
```
## install the tools
```
sudo bash acunetix_24.10.241106172_x64.sh
```
## Once installed let's stop its service
```sh
sudo systemctl stop acunetix
```
## replace wvsc file:
```
sudo cp wvsc /home/acunetix/.acunetix/v_241106172/scanner/wvsc
```
```
sudo chown acunetix:acunetix /home/acunetix/.acunetix/v_241106172/scanner/wvsc
```
```
sudo chmod +x /home/acunetix/.acunetix/v_241106172/scanner/wvsc
```
## to add licenses
```sh
sudo rm /home/acunetix/.acunetix/data/license/*
```
```
sudo cp license_info.json /home/acunetix/.acunetix/data/license/
```
```
sudo cp wa_data.dat /home/acunetix/.acunetix/data/license/
```
```
sudo chown acunetix:acunetix /home/acunetix/.acunetix/data/license/license_info.json
```
```
sudo chown acunetix:acunetix /home/acunetix/.acunetix/data/license/wa_data.dat
```
```
sudo chmod 444 /home/acunetix/.acunetix/data/license/license_info.json
```
```
sudo chmod 444 /home/acunetix/.acunetix/data/license/wa_data.dat
```
```
sudo chattr +i /home/acunetix/.acunetix/data/license/license_info.json
```
```
sudo chattr +i /home/acunetix/.acunetix/data/license/wa_data.dat
```
## restart acunetix
```
sudo systemctl start acunetix
```
## Now login back to application
```
https://localhost:3443/
```
## Dépannage

If you encounter any issues while installing or using Acunetix, here are some common troubleshooting steps:

- **Check service status:**  
```
sudo systemctl status acunetix
```

- **Check the logs to identify errors :**  
```
journalctl -u acunetix -f
```
This displays the logs in real time to detect any errors.

- **Licence issues :**  
- Ensure that the `licence_info.json` and `wa_data.dat` files are copied to the `/home/acunetix/.acunetix/data/licence/` directory with the correct permissions (read-only)  
- Ensure that immutability attributes are properly applied :
  ```
  sudo lsattr /home/acunetix/.acunetix/data/license/
  ```

- **File permissions:**  
Ensure that all installation files and executables have the necessary permissions with:
```
sudo chmod +x /chemin/vers/le/fichier
```

- **Check critical files and paths**
- Confirm the existence of the paths used in the commands, in particular `/home/acunetix/.acunetix/` and subfolders.
- Verify that the `acunetix` user has read/write/execute permissions as needed:  
```
sudo chown -R acunetix:acunetix /home/acunetix/.acunetix/
sudo chmod -R 755 /home/acunetix/.acunetix/
```

- **Consult the official documentation or contact support if necessary.**




																																				*@M@oboxx2

