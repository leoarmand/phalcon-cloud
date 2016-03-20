//TODO 4.2 Mes disques
<h1>Liste des disques de {{ user }}</h1>

<a class="btn btn-default" href="" data-ajax="">Creer un disque</a>

<?php
    foreach($disques as $disque){
        $tarif=ModelUtils::getDisqueTarif($disque);
        echo '<p>'.$disque->name.'</p>';
        echo '<p>'.$occupation.'</p>';
        //this->progressbarAction("Progressbar",$couleur,$occupation)
        echo '<a class="btn btn-default">Ouvrir</a>';
    }
?>