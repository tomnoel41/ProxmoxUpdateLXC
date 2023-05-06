# Script de maintenance pour les conteneurs LXC sur Proxmox

Ce script en shell permet de mettre à jour et de redémarrer tous les conteneurs LXC sur un serveur Proxmox. Il propose également un menu pour choisir entre différentes actions, notamment la mise à jour, le redémarrage ou les deux pour tous les conteneurs.

## Utilisation
Connectez-vous au serveur Proxmox en tant qu'utilisateur root.
Téléchargez le script sur le serveur.
Rendez le script exécutable (chmod +x proxmoxupdatelxc.sh).
Exécutez le script (bash proxmoxupdatelxc.sh).
Choisissez l'option souhaitée dans le menu.

## Fonctionnalités
Le script effectue les opérations suivantes :

Mise à jour de tous les conteneurs LXC avec les commandes apt-get update et apt-get dist-upgrade.
Redémarrage de tous les conteneurs LXC avec la commande pct restart.
Menu permettant de choisir entre les différentes actions ou de quitter le script.

## Notes
Ce script a été testé sur Proxmox 7.4-3 et devrait fonctionner sur d'autres versions de Proxmox.
Ce script doit être exécuté en tant qu'utilisateur root sur le serveur Proxmox.
Ce script ne sauvegarde pas les conteneurs avant de les mettre à jour ou de les redémarrer. Il est recommandé de sauvegarder les conteneurs avant d'exécuter ce script.
Ce script ne gère pas les erreurs qui pourraient survenir pendant l'exécution. Veuillez vérifier les journaux du système pour identifier et résoudre tout problème.