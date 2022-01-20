-- 1Sélectionnez tous les champs de `categ` ordonnés par `name` ascendant
Select * from Categ order by name asc;

-- 2Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` vaut 4
select idcateg , name from categ where idcateg = 4;

-- 3Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` se trouve entre 2 et 4
select idcateg , name from categ where idcateg between 2 and 4;

-- 4Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` est 1, 3 ou 5  ordonné par `name` descendant
select idcateg , name from categ where idcateg in (1,3,5) order by name desc;

-- 5Séléctionnez tous les champs de `categ` quand `desc` contient 'et' n'importe où dans la chaîne
select * from `categ`  where `desc` LIKE "%et%";  

-- 6Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` et  `title` de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 17 lignes de résultats) , ordonnés par `news`.`title` ASC
select
 categ.* ,
 news.idnews ,
 news.title
 from
 categ  
left join news_has_categ on news_has_categ.categ_idcateg = categ.idcateg
left join news on news.idnews = news_has_categ.news_idnews
 WHERE idcateg = 5
 Order by news.title asc;

-- 7Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` et  `title` de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 6 lignes de résultats) , ordonnés par `news`.`title` ASC ET que `news`.`visible` vaut 1 !
select
 categ.* ,
 news.idnews ,
 news.title
 from
 categ  
left join news_has_categ on news_has_categ.categ_idcateg = categ.idcateg
left join news on news.idnews = news_has_categ.news_idnews
 WHERE idcateg = 5 and visible =1
 Order by news.title asc;


-- 8Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` (concaténés sur une seul ligne avec la ',' comme séparateur) et  `title` (concaténés sur une seul ligne avec '|||' comme séparateur) de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 1 ligne de résultats) ,  ET que `news`.`visible` vaut 1 !
select
 categ.* ,
 GROUP_CONCAT(news.idnews) as idnews ,
 GROUP_CONCAT(news.title Separator "|||") as title
 from
 categ  
left join news_has_categ on news_has_categ.categ_idcateg = categ.idcateg
left join news on news.idnews = news_has_categ.news_idnews
 WHERE idcateg = 5 and visible =1;

-- 9Séléctionnez `idnews` et `title` de la table `news` lorsque le `title` commence par 'c' (7 résultats)
select idnews , title from `news`  where `title` LIKE "c%";
 
-- 10Séléctionnez `idnews` et `title` de la table `news` lorsque le `title` commence par 'a' et `visible` vaut 1 (10 résultats)
select idnews , title from `news`  where `title` LIKE "a%" AND visible = 1;
-- 11Séléctionnez `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure)  lorsque le `title` commence par 'a' et `visible` vaut 1 (10 résultats)
select
 news.idnews , 
 news.title,
 user.iduser,
 user.login 
 from news
 inner join user 
 on news.user_iduser = user.iduser 
 where title 
 like "a%" 
 and visible = 1;
-- 12Séléctionnez  `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure)  lorsque le `title` commence par 'a' et `visible` vaut 1 , classés par `user`.`login` ascendant (10 résultats)
select
 news.idnews ,
 news.title,
 user.iduser,
 user.login
 from news
 inner join user 
 on news.user_iduser = user.iduser
 where title 
 like "a%" 
 and visible = 1 order by user.login asc;
-- 13Séléctionnez  `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure)  lorsque le `title` commence par 'a' et `visible` vaut 1 , classés par `user`.`login` ascendant en ne gardant que les 3 premiers résultats (3 résultats)
select
 news.idnews ,
 news.title,
 user.iduser,
 user.login
 from news 
 inner join user on news.user_iduser = user.iduser
 where title
 like "a%"
 and visible = 1 order by user.login asc limit 3;

-- 14Séléctionnez  `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure)  lorsque le `title` commence par 'a' et `visible` vaut 1 , classés par `user`.`login` ascendant en ne gardant que les 3 derniers résultats (3 résultats)
select
 news.idnews ,
 news.title,
 user.login,
 user.iduser as userid
 from news
 inner join user on news.user_iduser = user.iduser
 where title 
 like "a%" 
 and visible = 1 order by user.login asc
 limit 3 offset 7;

-- 15Sélectionnez `iduser` et `login` de la table `user`, avec le nombre d'articles écrit par chacun renommé `nbarticles`, classés par `nbarticles` descendant et en n'en gardant que les 5 premiers (5 résultats)
select
user.iduser,
 user.login,
count(news.idnews) as nbarticles 
 from user 
inner  join news  on news.user_iduser = user.iduser 
group by iduser
order by nbarticles desc limit 5;
 
