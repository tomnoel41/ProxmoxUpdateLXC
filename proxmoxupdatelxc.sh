#!/bin/bash

# Fonction pour mettre à jour un CT
update_ct() {
    echo "Mise à jour du CT $1 en cours..."
    pct exec $1 apt-get update && apt-get dist-upgrade -y
    echo "Mise à jour du CT $1 terminée."
}

# Fonction pour redémarrer un CT
restart_ct() {
    echo "Redémarrage du CT $1 en cours..."
    pct restart $1
    echo "Redémarrage du CT $1 terminé."
}

# Récupération de la liste des CT
ct_list=$(pct list | awk '{if (NR!=1) print $1}')

# Menu principal
while true; do
    echo ""
    echo "Que voulez-vous faire ?"
    echo "1. Mettre à jour tous les CT"
    echo "2. Redémarrer tous les CT"
    echo "3. Mettre à jour et redémarrer tous les CT"
    echo "4. Quitter"
    read -p "Votre choix : " choice

    case $choice in
        1)
            # Mise à jour de tous les CT
            for ct_id in $ct_list; do
                update_ct $ct_id
            done
            ;;
        2)
            # Redémarrage de tous les CT
            for ct_id in $ct_list; do
                restart_ct $ct_id
            done
            ;;
        3)
            # Mise à jour et redémarrage de tous les CT
            for ct_id in $ct_list; do
                update_ct $ct_id
                restart_ct $ct_id
            done
            ;;
        4)
            # Sortie du script
            echo "Au revoir !"
            exit 0
            ;;
        *)
            # Choix invalide
            echo "Choix invalide. Veuillez réessayer."
            ;;
    esac
done