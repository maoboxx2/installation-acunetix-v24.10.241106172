# Installation Acunetix v24.10.241106172

Ce dépôt contient tous les fichiers nécessaires pour installer et configurer **Acunetix v24.10.241106172** sur votre environnement.

## Contenu du dépôt

- scripts/: scripts d'installation et de configuration
- configs/: fichiers de configuration
- docs/: guides et documentation
- .gitignore: fichiers à ignorer pour Git

## Prérequis

- Système d'exploitation compatible (Linux / Windows)
- Droits administrateur pour l'installation
- Connexion Internet pour les téléchargements nécessaires

## Installation

1. Configurer l'environnement :
```bash
bash scripts/setup_env.sh
```

2. Installer Acunetix :
```bash
bash scripts/install_acunetix.sh
```

## Configuration

- Les paramètres par défaut sont dans configs/acunetix_config.json
- Modifier les valeurs selon vos besoins avant d'exécuter les scripts

## Documentation

Consultez le fichier docs/guide_installation.pdf pour les instructions détaillées et les captures d'écran.

## Contribution

Pour contribuer, créer une branche à partir de main et soumettre vos modifications via Pull Request.

## License

Voir le fichier LICENSE.
