# Sélection de tous les champs de la table categ
SELECT * FROM categ;
# Sélection de toutes les news
SELECT * FROM news;
# Sélection de toutes les news lorsque 'news.visible' vaut 1
SELECT * FROM news 
	WHERE news.visible = 1;
# Sélection de toutes les permissions
SELECT * FROM permission;
# Sélection de tous les champs d'utilisateurs
SELECT * FROM `user`;
# Sélection de tous les champs d'utilisateurs avec le champs 'name' venant de permission
# En jointure interne
SELECT `user`.* , `permission`.`name`
	FROM `user`
    INNER JOIN `permission`
		ON `user`.`permission_idpermission` = `permission`.`idpermission`;
        