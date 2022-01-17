# Sélection de tous les champs de la table categ
SELECT
  *
FROM
  categ;
# Sélection de toutes les news
SELECT
  *
FROM
  news;
# Sélection de toutes les news lorsque 'news.visible' vaut 1
SELECT
  *
FROM
  news
WHERE
  news.visible = 1;
# Sélection de toutes les permissions
SELECT
  *
FROM
  permission;
# Sélection de tous les champs d'utilisateurs
SELECT
  *
FROM
  `user`;
# Sélection de tous les champs d'utilisateurs avec le champs 'name' venant de permission
  # En jointure interne ! 'name' étant présent 2x, il faut utiliser un alias 'AS permission_name'
SELECT
  `user`.*,
  `permission`.`name` AS permission_name
FROM
  `user`
  INNER JOIN `permission` ON `user`.`permission_idpermission` = `permission`.`idpermission`;
# Sélection de tous les champs d'utilisateurs sauf permission_idpermission et pwd
  # avec le champs 'name' venant de permission renommé en 'permission_name'
  # En jointure interne !
SELECT
  `user`.`iduser`,
  `user`.`login`,
  `user`.`name`,
  `permission`.`name` AS permission_name
FROM
  `user`
  INNER JOIN `permission` ON `user`.`permission_idpermission` = `permission`.`idpermission`;