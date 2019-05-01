<?php

// sollicite les services de la classe PdoDao
require_once ('PdoDao.class.php');

class PretDal {

    /**
     * charge un tableau de prets
     * @param  $style : 0 == tableau assoc, 1 == objet
     * @return  un objet de la classe PDOStatement
    */
    public static function loadPrets($style) {
        // instanciation d'un objet PdoDao
        $cnx = new PdoDao(); 
        $qry = "SELECT id_pret as ID, "
            . "no_client, "
            . "no_ouvrage, "
            . "date_emp, "
            . "date_ret, "
            . "penalite,"
            . "titre,"
            . "salle,"
            . "rayon,"
            . "nom_client,"
            . "prenom,"
            . "date_limite,"
            . "duree "
            . "FROM v_prets";
        
        $tab = $cnx->getRows($qry, array(), $style);
        if (is_a($tab, 'PDOException')) {
            return PDO_EXCEPTION_VALUE;
        }
        // dans le cas où on attend un tableau d'objets
        if ($style == 1) {
            // retourner un tableau d'objets
            $res = array();
            foreach ($tab as $ligne) {
                $unPret = new Pret(
                    $ligne->ID, 
                    $ligne->no_client, 
                    $ligne->no_ouvrage,
                    $ligne->date_emp,
                    $ligne->date_ret,
                    $ligne->penalite,
                    $ligne->titre, 
                    $ligne->salle, 
                    $ligne->rayon,
                    $ligne->nom_client,
                    $ligne->prenom,
                    $ligne->date_limite,
                    $ligne->duree
                );
                array_push($res, $unPret);
            }
            return $res;
        }
        return $tab;
    }
    
    /**
     * charge un objet de la classe Pret à partir de son code
     * @param  $id : le code du pret
     * @return  un objet de la classe Pret
    */
    public static function loadPretByID($id) {
        $cnx = new PdoDao();
        // requête
        $qry =  "SELECT id_pret as ID,"
            . "no_client, "
            . "no_ouvrage, "
            . "date_emp, "
            . "date_ret, "
            . "penalite,"
            . "titre,"
            . "salle,"
            . "rayon,"
            . "nom_client,"
            . "prenom,"
            . "date_limite,"
            . "duree "
            . "FROM v_prets "
            . "WHERE id_pret = ?";
        $res = $cnx->getRows($qry, array($id), 1);
        if (is_a($res, 'PDOException')) {
            return PDO_EXCEPTION_VALUE;
        }
        if (!empty($res)) {
            // le pret existe
            return new Pret($id,
                $res[0]->no_client, 
                $res[0]->no_ouvrage,
                $res[0]->date_emp,
                $res[0]->date_ret,
                $res[0]->penalite,
                $res[0]->titre, 
                $res[0]->salle,
                $res[0]->rayon,
                $res[0]->nom_client,
                $res[0]->prenom,
                $res[0]->date_limite,
                $res[0]->duree
            );
        } else {
            return NULL;
        }
    }

    /**
     * ajoute un pret
    */
    public static function addPret($idClient,$idOuvrage,$dateEmp,$dateRet) {
        $cnx = new PdoDao();
        $qry = "INSERT INTO pret (no_client, no_ouvrage, date_emp, date_ret) VALUES (?,?,?,?)";
        $res = $cnx->execSQL($qry, array(
            $idClient,
            $idOuvrage,
            $dateEmp,
            $dateRet
            )
        );
        if (is_a($res, 'PDOException')) {
            return PDO_EXCEPTION_VALUE;
        }
        return $res;
    }
    
    /**
     * Récupère l'ID du dernier pret ajouté dans la base de données
    */
    public static function getMaxId()  {
        $cnx = new PdoDao();
        $qry = "SELECT MAX(id_pret) FROM pret";
        $intID = $cnx->getValue($qry, array());
        return $intID;
    }

    
    /**
    * calcule le nombre de pret pour un client
    * @param type $id : l'ID du client
    * @return le nombre de prets du client
    */ 
    public static function countOuvragesAuteur($id){
        $cnx = new PdoDao();
        $qry = 'SELECT COUNT(*) FROM client_ouvrage WHERE id_client = ?';
        $res = $cnx->getValue($qry,array($id));
        if (is_a($res,'PDOException')) {
            return PDO_EXCEPTION_VALUE;
        }
        return $res;
    }
    
    /**
     * supprime un pret
     * @param   int $id : l'ID du pret a supprimer
     * @return le nombre de lignes affectées
    */      
    public static function delPret($id) {
        $cnx = new PdoDao();
        $qry = 'DELETE FROM pret WHERE id_pret = ?';
        $res = $cnx->execSQL($qry,array($id));
        if (is_a($res,'PDOException')) {
            return PDO_EXCEPTION_VALUE;
        }
        return $res;
    }
    
    /**
     * modifie un pret
     * @param   Pret $unPret
     * @return  le nombre de lignes affectées
    */      
    public static function setPret($unPret) {
        $cnx = new PdoDao();
        $qry = "UPDATE pret SET no_client = ?,"
            ."no_ouvrage = ?,"
            ."date_emp = ?,"
            ."date_ret = ?, "
            ."penalite = ?"
            ." WHERE id_pret = ?";
        $res = $cnx->execSQL($qry,array(
            $unPret->getClient(),
            $unPret->getOuvrage(),
            $unPret->getDateEmp(),
            $unPret->getDateRet(),
            $unPret->getPenalite(),
            $unPret->getId()
        ));
        if (is_a($res,'PDOException')) {
            return PDO_EXCEPTION_VALUE;
        }
        return $res;
    }
}

?>