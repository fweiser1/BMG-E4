<?php
/** 
 * Page de consultation d'un ouvrage

 * @author DORNIER Baptiste et WEISER Florian
 * @package default
*/
?>

<div id="content">
    <h2>Gestion des ouvrages</h2>
    
    <?php
    if (strlen($msg) > 0){
        echo '<span class="info">'.$msg.'</span>';
    }
    ?>
    
    <div id="object-list">          
        <div class="corps-form">
            <fieldset>
                <legend>Consulter un ouvrage</legend>                        
                <div id="breadcrumb">
                    <a href="index.php?uc=gererOuvrages&action=ajouterOuvrage">Ajouter</a>&nbsp;
                    <a href="index.php?uc=gererOuvrages&action=modifierOuvrage&option=saisirOuvrage&id=<?php echo $lOuvrage->getNum() ?>">Modifier</a>&nbsp;
                    <a href="index.php?uc=gererOuvrages&action=supprimerOuvrage&id=<?php echo $lOuvrage->getNum() ?>">Supprimer</a>&nbsp;
                    <a href="index.php?uc=gererOuvrages&action=ajouterAuteur&id=<?php echo $lOuvrage->getNum() ?>">Ajouter un auteur</a>&nbsp;
                </div>
                <table>
                    <tr>
                        <td class="h-entete">
                            Id :
                        </td>
                        <td class="h-valeur">
                            <?php echo $intID ?>
                        </td>
                        <td class="h-valeur" rowspan="8">
                            <?php echo couvertureOuvrage($lOuvrage->getNum(), $lOuvrage->getTitre()) ?>
                        </td>
                    </tr>
                    <tr>
                        <td class="h-entete">
                            Titre :
                        </td>
                        <td class="h-valeur">
                            <?php echo $lOuvrage->getTitre() ?>
                        </td>
                    </tr>
                    <tr>
                        <td class="h-entete">
                            Auteur(s) :
                        </td>
                        <td class="h-valeur">
                            <?php echo $lOuvrage->getAuteur() ?>
                        </td>
                    </tr>
                    <tr>
                        <td class="h-entete">
                            date d'acquisition :
                        </td>
                        <td class="h-valeur">
                            <?php echo $lOuvrage->getAcquisition() ?>
                        </td>
                    </tr>                  
                    <tr>
                        <td class="h-entete">
                            Genre :
                        </td>
                        <td class="h-valeur">
                            <?php echo $lOuvrage->getCode_genre()->getLibelle() ?>
                        </td>
                    </tr>
                    <tr>
                        <td class="h-entete">
                            Salle et rayon :
                        </td>
                        <td class="h-valeur">
                            <?php echo $lOuvrage->getSalle().", ".$lOuvrage->getRayon() ?>
                        </td>
                    </tr>
                    <tr>
                        <td class="h-entete">
                            Dernier prêt :
                        </td>
                        <td class="h-valeur">
                            <?php echo $lOuvrage->getDernier_pret() ?>
                        </td>
                    </tr>
                    <tr>
                        <td class="h-entete">
                            Disponibilité :
                        </td>
                        <td class="h-valeur">
                            <?php 
                                if($lOuvrage->getDisponibilite() == "D"){
                                    echo '<img src="img/dispo.png" alt="" />';
                                }
                                else {
                                    echo '<img src="img/emprunte.png" alt="" />';
                                }
                            ?>
                        </td>
                    </tr>
                </table>
            </fieldset>                    
        </div>
    </div>
</div>