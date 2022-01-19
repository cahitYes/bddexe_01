-- Sélectionnez tous les champs de `categ` ordonnés par `name` ascendant
SELECT * FROM `categ` ORDER BY `name` ASC;

-- Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` vaut 4
SELECT `idcateg`, `name` FROM `categ` WHERE `idcateg` = 4;

-- Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` se trouve entre 2 et 4
SELECT `idcateg`, `name` FROM `categ` WHERE `idcateg` BETWEEN 2 AND 4;