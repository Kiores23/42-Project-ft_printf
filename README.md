# ft_printf

**ft_printf** est une réimplémentation de la fonction `printf` de la bibliothèque standard C. Ce projet fait partie du cursus de l'école 42 et vise à comprendre le fonctionnement interne des fonctions de formatage de texte.

## Sommaire
- [Introduction](#introduction)
- [Fonctionnalités](#fonctionnalités)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [Structure du projet](#structure-du-projet)
- [Exemples](#exemples)
- [Auteur](#auteur)

## Introduction
Le projet **ft_printf** consiste à recréer la fonction `printf`, capable de gérer des chaînes de format complexes avec divers spécificateurs. L'objectif est de maîtriser la gestion des arguments variables en C et de renforcer la compréhension des fonctions bas niveau.

## Fonctionnalités
- Prise en charge des spécificateurs :
  - `%c` : caractère
  - `%s` : chaîne de caractères
  - `%p` : pointeur (format hexadécimal)
  - `%d` / `%i` : entier décimal
  - `%u` : entier non signé
  - `%x` / `%X` : entier hexadécimal (minuscule/majuscule)
  - `%%` : symbole `%`
- Gestion des arguments variables avec `va_list`
- Optimisation de l'affichage pour des performances accrues

## Installation
1. Clonez le dépôt :
   ```bash
   git clone git@github.com:Kiores23/42-Project-ft_printf.git
   cd 42-Project-ft_printf
   cd ft_printf
   ```
2. Compilez la bibliothèque :
   ```bash
   make
   ```
3. Pour nettoyer les fichiers objets :
   ```bash
   make clean
   ```
4. Pour nettoyer les fichiers objets et la bibliothèque compilée :
   ```bash
   make fclean
   ```
5. Pour recompiler à partir de zéro :
   ```bash
   make re
   ```

## Utilisation
Pour utiliser **ft_printf** dans votre projet C :
```c
#include "ft_printf.h"
```

Lors de la compilation, liez la bibliothèque :
```bash
gcc -L. -lftprintf votre_fichier.c -o votre_programme
```

## Structure du projet
```
ft_printf/
├── Makefile
├── includes/
│   └── ft_printf.h
├── srcs/
│   ├── ft_printf.c
│   ├── ft_utils.c
│   └── ...
└── libftprintf.a
```

## Exemples
```c
#include "ft_printf.h"
#include <stdio.h>

int main(void) {
    ft_printf("Hello, %s!\n", "42");              // Affiche : Hello, 42!
    ft_printf("Nombre : %d\n", 2024);              // Affiche : Nombre : 2024
    ft_printf("Hex : 0x%x\n", 255);                // Affiche : Hex : 0xff
    ft_printf("Pointeur : %p\n", (void *)main);    // Affiche l'adresse de la fonction main
    ft_printf("Symbole pourcent : %%\n");          // Affiche : Symbole pourcent : %
    return 0;
}
```

## Auteur
- **Nom :** Alexis Mery
- **Email :** amery@student.42nice.fr
- **GitHub :** [Kiores23](https://github.com/kiores23)

---

*Ce projet a été réalisé dans le cadre du cursus de l'école 42.*

