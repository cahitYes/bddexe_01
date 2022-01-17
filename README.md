# bddexe_01

## Révisions

Installez le fichier `bddexe_01.sql` en **désactivant les clefs étrangères** en MySQL 5.7 ou en MariaDB .

Nous allons travailler dans **Workbench** sur le fichier `nos-requetes.sql` .

Nous utilisons le moteur **InnoDB**.

### Modèle de notre base de donnée en MySQL 5.7

![Base SQL](https://github.com/WebDevCF2m2021/bddexe_01/raw/main/image.png)

### Dictionnaire de données de la base

[Dictionnaire de données en pdf](https://github.com/WebDevCF2m2021/bddexe_01/raw/main/db_structure_bddexe_01.pdf) à télécharger .

### Relations

- Relation **many to many entre** `news` et `categ` dans la table `news_has_categ`, en **CASCADE ON DELETE** pour éviter la suppression manuelle du lien entre les news et les catégories (en cas de suppression d'une news **ou** d'une catégorie).

![news_has_categ](https://github.com/WebDevCF2m2021/bddexe_01/raw/main/img/fk_news_has_categ.png)

- Relation **many to one** entre `news` et `user`, en **SET NULL ON DELETE** pour permettre à un article de rester dans la DB si on supprime l'utilisateur (! le champ `news.user_iduser` doit permettre le NULL)

![news](https://github.com/WebDevCF2m2021/bddexe_01/raw/main/img/fk_news-with-user.png)

- Relation **many to one** entre `user` et `permission`, **SET NULL ON DELETE** pour permettre à un utilisateur de rester dans la DB si on supprime une permission (! le champ `user.permission_idpermission` doit permettre le NULL)

![news](https://github.com/WebDevCF2m2021/bddexe_01/raw/main/img/fk_user-permission.png)

## Plugin pour VSCode

J'ai installé "Database Client for Visual Studio Code" pour pouvoir effectuer les requêtes depuis VSCode sans devoir lancer Workbench
