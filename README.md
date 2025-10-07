

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

Si vous rencontrez des problèmes lors de l'installation ou de l'utilisation d'Acunetix, voici quelques étapes de dépannage courantes :

- **Vérifier le statut du service :**  
```
sudo systemctl status acunetix
```

- **Consulter les logs pour identifier les erreurs :**  
```
journalctl -u acunetix -f
```
Cela affiche les logs en temps réel pour détecter les éventuelles erreurs.

- **Problèmes de licence :**  
- Vérifiez que les fichiers `license_info.json` et `wa_data.dat` sont bien copiés dans le répertoire `/home/acunetix/.acunetix/data/license/` avec les bons droits (lecture seule).  
- Assurez-vous que les attributs d'immuabilité sont bien appliqués :
  ```
  sudo lsattr /home/acunetix/.acunetix/data/license/
  ```

- **Permissions des fichiers :**  
Veillez à ce que tous les fichiers d'installation et exécutables aient les permissions nécessaires avec :
```
sudo chmod +x /chemin/vers/le/fichier
```

- **Vérifier les dossiers et chemins critiques**  
  - Confirmez l’existence des chemins utilisés dans les commandes, notamment `/home/acunetix/.acunetix/` et sous-dossiers.  
  - Vérifiez que l'utilisateur `acunetix` possède bien les droits en lecture/écriture/exécution selon besoin :  
```
sudo chown -R acunetix:acunetix /home/acunetix/.acunetix/
sudo chmod -R 755 /home/acunetix/.acunetix/
```

- **Consulter la documentation officielle ou contacter le support si besoin**

