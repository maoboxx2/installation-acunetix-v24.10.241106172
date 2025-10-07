#!/bin/bash
# Script pour préparer l'environnement pour Acunetix

echo "Mise à jour des paquets..."
sudo apt update && sudo apt upgrade -y

echo "Installation des dépendances..."
sudo apt install -y curl wget unzip

echo "Environnement prêt pour l'installation d'Acunetix."
