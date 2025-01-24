<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TP1</title>
</head>
<body>
    <?php 
        echo('<h1> evalutation php maunoury martin</h1>');
        class sePresenter {}
        class Animal{
            public $nom;
            public $âge;

            public function __construct($nom,$âge=10){
                $this -> nom = $nom;
                $this -> âge = $âge;
            }
            public function crier(){
                if ($this->âge<=0) {
                    return(false);
                }
                else {
                    return(true);
                     }
                                  }
                   }
        function __construct($nom){
                echo("nom : ") . $this->nom . ("<br />");
                echo ("<h2>Je suis un animal</h2>");
                echo ("<br/><hr/>");
            }
            echo ('<h2>Je suis un animal</h2>');

        class Chat extends Animal{


        }

        class Chien extends Animal{
            

        }

        function cloner () {

        }

       // function __clone(Animal){}   

    //   function seReproduire ("Animal", $a) {

    // }
        
    ?>
</body>
</html>

