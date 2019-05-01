<?php

require_once 'modele/GenreDal.class.php';
require_once 'modele/OuvrageDal.class.php';
require_once 'modele/AuteurDal.class.php';

require_once 'include/_reference.lib.php';

require_once 'include/API/_GoogleBooks.php';

if (!(isset($_REQUEST['action']))) {
    $action = 'rechercherOuvrages';
} 
else {
    $action = $_REQUEST['action'];
}

// variables pour al gestion des messages
$msg = '';      // message passé à la vue v_afficherMessage
$lien = '';     // message passé à la vue v_afficherErreurs

// variables pour la gestion des messages
$titrePage = 'Gestion des recherches';

// variables pour la gestion des erreurs
$tabErreurs = array();
$hasErrors = false;

// initialisation des variables
$strNum = '';
$strTitre = '';
$strGenre = '';
$strAuteur = '';
$intSalle = '1';
$strRayon = '';
$strDernier_pret = '';
$strDisponibilite = '';
$strDate_acquisition = '';

switch ($action) {
    case'rechercherOuvrages' : {
        if (isset($_GET["option"])) {
            $option = htmlentities($_GET["option"]);
        } 
        else {
            $option = 'saisirRecherche';
        }
        switch ($option) {
            case 'saisirRecherche' : {
                include ('vues/v_rechercheOuvrages.php');
            } break;
            case 'validerRecherche' : {
                if (isset($_POST["cmdRechercher"])) {
                    // récupération des valeurs saisies
                    if (isset($_POST["txtTitre"]) && !empty($_POST["txtTitre"])) {
                        $strTitre = ucfirst($_POST["txtTitre"]);
                    }
                    else {
                        $tabErreurs[] = "Le titre doit être renseigné !";
                        $hasErrors = true;
                    }
                    if (!$hasErrors) {
                        $googlebooks = new _GoogleBooks("AIzaSyCn283G5q63Wh8cmHk-wLXfGQLC6SZ4HlE");
                        $books = $googlebooks->getVolumes($strTitre);
                        $nbOuvrages = $books['totalItems'];
                        include ('vues/v_listeRecherches.php');
                    } 
                    else {
                        $msg = "L'opération de recherche n'a pas pu être menée à terme en raison des erreurs suivantes :";
                        $lien = '<a href="index.php?uc=gererRecherches&action=rechercherOuvrages&option=saisirRecherche">Retour à la saisie</a>';
                        include ('vues/_v_afficherErreurs.php');
                    }
                }
            } break;
        }
    } break;
    default : { 
        include 'vues/_v_home.php'; 
    }
}

?> 