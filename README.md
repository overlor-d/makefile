# Jean Lepeltier Project

Ce projet vise à créer une bibliothèque statique et une bibliothèque partagée à partir de fichiers source C situés dans le répertoire `src`. Le projet est nommé d'après Jean Lepeltier, reflétant la structure et la méthodologie utilisées dans le processus de compilation et de gestion de la bibliothèque.

## Structure du Projet

- `src/`: Dossier contenant les fichiers sources `.c`.
- `Makefile`: Contient les instructions pour compiler les bibliothèques et gérer le projet.

## Compilation

Pour compiler le projet, les commandes suivantes sont disponibles :

- **`make all`** : Compile les bibliothèques statiques et partagées.
- **`make static`** : Compile uniquement la bibliothèque statique.
- **`make shared`** : Compile uniquement la bibliothèque partagée.
- **`make clean`** : Supprime les fichiers objets et les bibliothèques.
- **`make dist`** : Crée une archive du projet.
- **`make distclean`** : Supprime les fichiers objets, les bibliothèques et l'archive du projet.
- **`make check`** : Compile le projet et exécute les tests.

### Dépendances

Ce projet nécessite un compilateur C (comme gcc) et les outils standard de build Unix/Linux (`make`, `ar`, etc.).

### Usage

Après avoir compilé le projet, vous pouvez :

- Inclure la bibliothèque statique `$(NOM_PROJ).a` ou la bibliothèque partagée `$(NOM_PROJ).so` dans vos projets C.
- Utiliser `make check` pour exécuter les tests et vérifier l'intégrité des bibliothèques.

---

Inclus `Makefile.rules` pour les règles spécifiques et les configurations additionnelles nécessaires à la compilation du projet.
