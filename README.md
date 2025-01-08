# 📌 Programme de Gestion d'Image et de Signaux Redstone

## 📚 Description

Ce programme affiche une image au format `.nfp` sur un **moniteur ComputerCraft** et génère un signal Redstone analogique en fonction de la couleur cliquée sur l'image.  
Chaque couleur de l'image correspond à une puissance de signal spécifique, permettant de contrôler des mécanismes variés en fonction des interactions sur le moniteur.

---

## 🚀 Fonctionnalités

- **Affichage d'images** : Le programme charge et affiche une image au format `.nfp` sur un moniteur connecté.
- **Gestion de signaux Redstone** : En cliquant sur une couleur spécifique de l'image, un signal analogique est envoyé sur le côté droit de l'ordinateur.
- **Association couleur-signal** : Chaque couleur correspond à une puissance Redstone prédéfinie, allant de 0 à 15.

---

## 🗃️ Prérequis

1. **Matériel nécessaire** :
   - Un ordinateur ComputerCraft.
   - Un moniteur ComputerCraft connecté (sur le côté **back**).
   - Un circuit Redstone connecté au côté **right** de l'ordinateur.
2. **Fichier requis** :
   - Une image au format `.nfp` nommée `image.nfp`. Ce fichier doit être présent dans le répertoire courant de l'ordinateur.

---

## ⚙️ Installation

1. Place le fichier `image.nfp` dans le répertoire courant de ton ordinateur ComputerCraft.
2. Copie le programme dans un fichier Lua, par exemple : `interraction.lua`.
3. Connecte un moniteur au côté **back** de l'ordinateur.
4. Connecte un circuit Redstone au côté **right** de l'ordinateur.
5. Démarre l'ordinateur pour exécuter le programme.

---

## 🖥️ Utilisation

1. Lors de l'exécution :
   - L'image `image.nfp` sera affichée sur le moniteur connecté.
2. **Interagir avec l'image** :
   - Clique sur une zone de l'image. La couleur de la zone cliquée déterminera la puissance du signal Redstone envoyé.
3. **Signaux générés** :
   - Les signaux Redstone sont envoyés sur le côté **right** de l'ordinateur.
   - Chaque couleur a une puissance Redstone associée (voir tableau ci-dessous).

---

## 🎨 Tableau des Couleurs et Signaux

| **Couleur**         | **Signal Redstone** |
|----------------------|---------------------|
| Noir (`black`)       | 0                  |
| Blanc (`white`)      | 1                  |
| Orange (`orange`)    | 2                  |
| Magenta (`magenta`)  | 3                  |
| Bleu clair (`lightBlue`) | 4              |
| Jaune (`yellow`)     | 5                  |
| Vert clair (`lime`)  | 6                  |
| Rose (`pink`)        | 7                  |
| Gris (`gray`)        | 8                  |
| Gris clair (`lightGray`) | 9             |
| Cyan (`cyan`)        | 10                 |
| Violet (`purple`)    | 11                 |
| Bleu (`blue`)        | 12                 |
| Marron (`brown`)     | 13                 |
| Vert (`green`)       | 14                 |
| Rouge (`red`)        | 15                 |

---

## 🛠️ Dépannage

- **Erreur : "Le fichier 'image.nfp' est introuvable."**  
  Assurez-vous que le fichier `image.nfp` est bien présent dans le répertoire courant de l'ordinateur.

- **Erreur : "Impossible de charger l'image."**  
  Vérifiez que le fichier `image.nfp` est valide et compatible avec `paintutils`.

- **Signal Redstone incorrect ou absent** :  
  - Assurez-vous que le côté **right** de l'ordinateur est connecté au circuit Redstone.  
  - Vérifiez que les couleurs de l'image sont définies dans la table `colorSignals`.

---

## 🔧 Personnalisation

- **Changer le chemin de l'image** :  
  Modifiez la variable `imagePath` pour indiquer un autre fichier `.nfp`.

- **Modifier les associations couleur-signal** :  
  Ajoutez ou modifiez des entrées dans la table `colorSignals`.

---

## 📜 Licence

Ce programme est open-source et peut être librement utilisé, modifié et redistribué.

---

## Crédits

Créé par **ChairGamerTag87** ! 💙




