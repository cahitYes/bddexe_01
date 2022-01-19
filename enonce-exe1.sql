-- Sélectionnez tous les champs de `categ` ordonnés par `name` ascendant
-- Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` vaut 4
-- Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` se trouve entre 2 et 4
-- Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` se trouve est 1, 3 ou 5 ordonné par `name` descendant
-- Séléctionnez tous les champs de `categ` quand `desc` contient 'et' n'importe où dans la chaîne
-- Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` et  `title` de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 17 lignes de résultats) , ordonnés par `news`.`title` ASC
-- Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` et  `title` de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 6 lignes de résultats) , ordonnés par `news`.`title` ASC ET que `news`.`visible` vaut 1 !
-- Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` (concaténés sur une seul ligne avec la ',' comme séparateur) et  `title` (concaténés sur une seul ligne avec '|||' comme séparateur) de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 1 ligne de résultats) ,  ET que `news`.`visible` vaut 1 !

