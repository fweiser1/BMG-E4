CREATE DEFINER=`root`@`localhost` FUNCTION `f_auteurs_ouvrage`(
	p_id	int
) RETURNS varchar(255) CHARSET utf8
    READS SQL DATA
BEGIN
	DECLARE done INT DEFAULT FALSE;
	DECLARE v_auteur varchar (128);    
    DECLARE v_result varchar (255);
    DECLARE v_temp varchar (255);
    DECLARE c_auteurs CURSOR FOR
		SELECT 
			IF (
				ISNULL(alias) OR LENGTH(alias) = 0, 
				IF (
					ISNULL(prenom_auteur) OR LENGTH(prenom_auteur) = 0,
					nom_auteur,
					CONCAT(prenom_auteur,' ',nom_auteur)
				)			
				,
				alias				
			) AS nom
        FROM auteur a
        INNER JOIN auteur_ouvrage ao ON a.id_auteur = ao.id_auteur
        WHERE no_ouvrage = p_id;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    SET v_auteur := '';
    SET v_temp := '';
  	OPEN c_auteurs;
	read_loop: LOOP
		FETCH c_auteurs INTO v_auteur;
        IF done THEN
			LEAVE read_loop;
		END IF;
		SELECT CONCAT(v_temp,v_auteur,', ') INTO v_temp; 
	END LOOP;
	CLOSE c_auteurs;
    SELECT SUBSTR(RTRIM(v_temp),1,LENGTH(v_temp) - 2) INTO v_result;
	RETURN v_result;
END