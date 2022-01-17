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

- Relation many to many en cascade entre `news` et `categ` dans la table `news_has_categ`

![news_has_categ](https://github.com/WebDevCF2m2021/bddexe_01/raw/main/img/fk_news_has_categ.png)
