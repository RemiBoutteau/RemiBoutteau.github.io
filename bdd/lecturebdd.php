<?php
    function get_liste_publis($bdd, $type_publi)
    {
      echo '<ul>';   
      // On récupère tout le contenu de la table des journeaux
      // $reponse = $bdd->query("SELECT * FROM publications WHERE type_publi='$type_publi' ORDER BY Annee DESC, id_publication DESC");
      
      switch( $type_publi ){
        case 'JOURINT':
            $reponse = $bdd->query("SELECT publi.*, jourint.* FROM `publications` as publi
                                left join articles_journaux_internationaux as art on art.`id_publication`=publi.id_publication
                                left join journaux_internationaux as jourint on jourint.id_journal_int=art.id_journal_int
                                WHERE `type_publi` ='JOURINT' ORDER BY Annee DESC, id_publication DESC");

            // On affiche chaque entrée une à une
            while ($donnees = $reponse->fetch()){
              echo '<li>'; 
              echo $donnees['auteurs']; echo ', "'; 
              echo '<i>'; echo $donnees['titre']; echo '</i>'; echo '", ';
              echo $donnees['nom']; echo ', '; echo $donnees['details']; echo ', '; 
              echo $donnees['annee']; echo ', '; 
              echo '(JCR IF '; echo $donnees['ImpactFactor']; echo ', Quartile SJR '; echo $donnees['Quartile']; echo ').';

              if( $donnees['pdf'] != '')
              {
                echo '<a href="';echo $donnees['pdf'];echo '"'; echo  ' target="_blank"><img src="images/PDF_file_icon.svg" alt="pdf file" height="27"  width="23"></a>';
              }
            
              if($donnees['hal'] != '')
              {
                echo '<a href="';echo $donnees['hal'];echo '"';echo  ' target="_blank"><img src="images/HAL.png" alt="HAL" height="27"  width="27"></a>';
              }    
              
              if($donnees['lien'] != '')
              {
                echo '<a href="';echo $donnees['lien'];echo '"';echo  ' target="_blank"><img src="images/wwwicon.png" alt="link" height="27"  width="23"></a>';
              }   
            }
            
            $reponse->closeCursor(); // Termine le traitement de la requête         
            echo '</ul>';
                
            break;

        case 'CONFINT':
            $reponse = $bdd->query("SELECT publi.*, confint.* FROM `publications` as publi
                                left join articles_conferences_internationales as art on art.`id_publication`=publi.id_publication
                                left join conferences_internationales as confint on confint.id_conference_int=art.id_conference_int
                                WHERE `type_publi` ='CONFINT' ORDER BY Annee DESC, id_publication DESC");

            // On affiche chaque entrée une à une
            while ($donnees = $reponse->fetch()){
              echo '<li>'; 
              echo $donnees['auteurs']; echo ', "'; 
              echo '<i>'; echo $donnees['titre']; echo '</i>'; echo '", ';
              echo $donnees['nom']; echo ', '; echo $donnees['details']; echo ', '; 
              echo $donnees['annee']; echo '.';   
              if( $donnees['pdf'] != '')
              {
                echo '<a href="';echo $donnees['pdf'];echo '"'; echo  ' target="_blank"><img src="images/PDF_file_icon.svg" alt="pdf file" height="27"  width="23"></a>';
              }
            
              if($donnees['hal'] != '')
              {
                echo '<a href="';echo $donnees['hal'];echo '"';echo  ' target="_blank"><img src="images/HAL.png" alt="HAL" height="27"  width="27"></a>';
              }    
              
              if($donnees['lien'] != '')
              {
                echo '<a href="';echo $donnees['lien'];echo '"';echo  ' target="_blank"><img src="images/wwwicon.png" alt="link" height="27"  width="23"></a>';
              }   
            }
            
            $reponse->closeCursor(); // Termine le traitement de la requête         
            echo '</ul>';

          break;

          case 'CHAPT':
            $reponse = $bdd->query("SELECT * FROM `publications` WHERE `type_publi` ='CHAPT' ORDER BY Annee DESC, id_publication DESC");

            // On affiche chaque entrée une à une
            while ($donnees = $reponse->fetch()){
              echo '<li>'; 
              echo $donnees['auteurs']; echo ', "'; 
              echo '<i>'; echo $donnees['titre']; echo '</i>'; echo '", ';
              echo $donnees['details']; echo ', '; 
              echo $donnees['annee']; echo '.';   
              if( $donnees['pdf'] != '')
              {
                echo '<a href="';echo $donnees['pdf'];echo '"'; echo  ' target="_blank"><img src="images/PDF_file_icon.svg" alt="pdf file" height="27"  width="23"></a>';
              }
            
              if($donnees['hal'] != '')
              {
                echo '<a href="';echo $donnees['hal'];echo '"';echo  ' target="_blank"><img src="images/HAL.png" alt="HAL" height="27"  width="27"></a>';
              }    
              
              if($donnees['lien'] != '')
              {
                echo '<a href="';echo $donnees['lien'];echo '"';echo  ' target="_blank"><img src="images/wwwicon.png" alt="link" height="27"  width="23"></a>';
              }   
            }
            
            $reponse->closeCursor(); // Termine le traitement de la requête         
            echo '</ul>';

           break;

          case 'CONFNAT':
          $reponse = $bdd->query("SELECT publi.*, confnat.* FROM `publications` as publi
                              left join articles_conferences_nationales as art on art.`id_publication`=publi.id_publication
                              left join conferences_nationales as confnat on confnat.id_conference_nat=art.id_conference_nat
                              WHERE `type_publi` ='CONFNAT' ORDER BY Annee DESC, id_publication DESC");

          // On affiche chaque entrée une à une
          while ($donnees = $reponse->fetch()){
            echo '<li>'; 
            echo $donnees['auteurs']; echo ', "'; 
            echo '<i>'; echo $donnees['titre']; echo '</i>'; echo '", ';
            echo $donnees['nom']; echo ', '; echo $donnees['details']; echo ', '; 
            echo $donnees['annee']; echo '.';   
            if( $donnees['pdf'] != '')
            {
              echo '<a href="';echo $donnees['pdf'];echo '"'; echo  ' target="_blank"><img src="images/PDF_file_icon.svg" alt="pdf file" height="27"  width="23"></a>';
            }
          
            if($donnees['hal'] != '')
            {
              echo '<a href="';echo $donnees['hal'];echo '"';echo  ' target="_blank"><img src="images/HAL.png" alt="HAL" height="27"  width="27"></a>';
            }    
            
            if($donnees['lien'] != '')
            {
              echo '<a href="';echo $donnees['lien'];echo '"';echo  ' target="_blank"><img src="images/wwwicon.png" alt="link" height="27"  width="23"></a>';
            }   
          }
          
          $reponse->closeCursor(); // Termine le traitement de la requête         
          echo '</ul>';

        break;

        case 'THESIS':
            $reponse = $bdd->query("SELECT * FROM `publications` WHERE `type_publi` ='THESIS' ORDER BY Annee DESC, id_publication DESC");

            // On affiche chaque entrée une à une
            while ($donnees = $reponse->fetch()){
              echo '<li>'; 
              echo $donnees['auteurs']; echo ', "'; 
              echo '<i>'; echo $donnees['titre']; echo '</i>'; echo '", ';
              echo $donnees['details']; echo ', '; 
              echo $donnees['annee']; echo '.';   
              if( $donnees['pdf'] != '')
              {
                echo '<a href="';echo $donnees['pdf'];echo '"'; echo  ' target="_blank"><img src="images/PDF_file_icon.svg" alt="pdf file" height="27"  width="23"></a>';
              }
            
              if($donnees['hal'] != '')
              {
                echo '<a href="';echo $donnees['hal'];echo '"';echo  ' target="_blank"><img src="images/HAL.png" alt="HAL" height="27"  width="27"></a>';
              }    
              
              if($donnees['lien'] != '')
              {
                echo '<a href="';echo $donnees['lien'];echo '"';echo  ' target="_blank"><img src="images/wwwicon.png" alt="link" height="27"  width="23"></a>';
              }   
            }
            
            $reponse->closeCursor(); // Termine le traitement de la requête         
            echo '</ul>';

           break;

      }    
  }
?>

  <!--Connexion à la base de données --> 
  <?php
    $host_name = 'localhost';;
    $database = 'publications';
    $user_name =  'root';

    //$lang="FR";
    $lang="EN";
 


    //On essaie de se connecter
    try {
      $bdd = new PDO("mysql:host=$host_name; dbname=$database;", $user_name/*, $password*/);
    } catch (PDOException $e) {
      echo "Erreur!: " . $e->getMessage() . "<br/>";
      die();
    }
  ?>

<h1>Publications</h1>

<?php

  if( $lang=="EN"){
    echo("<h2>Peer-Reviewed International Journals</h2>");
  }
  else{
    echo("<h2>Articles dans des revues internationales avec comité de lecture</h2>");
  }

  get_liste_publis($bdd, "JOURINT");  

  if( $lang=="EN"){
    echo("<h2>Peer-Reviewed International Conferences</h2>");
  }
  else{
    echo("<h2>Actes publiés dans des conférences internationales</h2>");
  }

  get_liste_publis($bdd, "CONFINT"); 

  if( $lang=="EN"){
    echo("<h2>Book chapters</h2>");
  }
  else{
    echo("<h2>Chapitres d'ouvrage</h2>");
  }

  get_liste_publis($bdd, "CHAPT");

  if( $lang=="EN"){
    echo("<h2>Peer-Reviewed National Conferences</h2>");
  }
  else{
    echo("<h2>Actes publiés dans des conférences nationales</h2>");
  }
  
  get_liste_publis($bdd, "CONFNAT");

  if( $lang=="EN"){
    echo("<h2>Thesis</h2>");
  }
  else{
    echo("<h2>Mémoires</h2>");
  }
  
get_liste_publis($bdd, "THESIS"); 

?>      

</main> <!-- End of the main content -->

<!--On ferme la connexion à la base de données --> 
<?php $bdd = null; ?>