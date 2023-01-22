<?php

session_start();
if(!isset($_SESSION['id'])){
    header("Location: prijava.php");
}
if($_SESSION['id'] != 'admin@gmail.com'){
    header("Location: prijava.php");
}
$kategorije = array(
    'cpu' => 'Procesorji',
    'cpu_cooler' => 'CPU Hladilniki',
    'graficna' => 'Grafične kartice',
    'motherboard' => 'Matične plošče',
    'ram' => 'Pomnilnik',
    'storage' => 'Pomnilne enote',
    'case_2' => 'Ohišja',
    'power_supply' => 'Napajalniki'
);
?>

<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <title>Nadzorna plošča</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,800">
    <link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/styles.css">
    <link rel="stylesheet" href="/css/index.css">
</head>

<body>

    <div class="container h-100">
        <div class="row mt-5 mb-2">
            <a href="/index.php" class="mx-auto d-block"><img class="w-50 mx-auto d-block" src="/assets/images/website_design/logo.png"></a>
        </div>
        <div class="row h-100 justify-content-center align-items-center">
            <div class="col-6">
                <div class="card">
                    <article class="card-body">
                        <a href="/index.php" class="float-right btn btn-outline-primary">Domov</a>
                        <h4 class="card-title mb-4 mt-1">Nadzorna plošča</h4>

                        <form>
                            <div class="input-group mb-4">
                                <select class="form-control" name='kategorija'>
                                    <?php 
                                        if(isset($_GET['kategorija'])){
                                            echo '<option value="'.array_search($kategorije[htmlspecialchars($_GET['kategorija'])],$kategorije).'">'.$kategorije[htmlspecialchars($_GET['kategorija'])].'</option>';
                                        }
                                        foreach($kategorije as $key => $value){
                                            if($value != $kategorije[htmlspecialchars($_GET['kategorija'])]){
                                                echo '<option value="'.$key.'">'.$value.'</option>';
                                            }
                                        }
                                    ?>
                                </select>
                                <select class="form-control" name='akcija'>
                                    <?php 
                                        if(isset($_GET['akcija'])){
                                            if($_GET['akcija'] == 'brisanje_izdelka'){
                                                echo '<option value="brisanje_izdelka">Brisanje izdelka</option>';
                                                echo '<option value="dodajanje_izdelka">Dodajanje izdelka</option>';
                                            }else{
                                                echo '<option value="dodajanje_izdelka">Dodajanje izdelka</option>';
                                                echo '<option value="brisanje_izdelka">Brisanje izdelka</option>';
                                            }
                                        }else{
                                            echo '<option value="dodajanje_izdelka">Dodajanje izdelka</option>';
                                            echo '<option value="brisanje_izdelka">Brisanje izdelka</option>';
                                        }
                                    
                                    ?>
                                    
                                    
                                </select>
                                <div class="input-group-append">
                                    <button id="button-addon5" type="submit" class="btn btn-primary"><i class="fa fa-arrow-right"></i></button>
                                </div>
                            </div>    
                        </form>

                        <?php 
                            require_once 'mojQuery.php';
                            if(isset($_GET['kategorija']) && isset($_GET['akcija'])){   //ce je admin kliknu dodajanje/brisanje in izbral kategorijo
                                if($_GET['akcija'] == 'dodajanje_izdelka'){
                                    $proizvajalci = 'SELECT naziv FROM proizvajalec ORDER BY proizvajalec.naziv';
                                    $proizvajalci = getQuery($proizvajalci);

                                    $q = 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA="trgovina" AND TABLE_NAME="'.$_GET['kategorija'].'";';
                                    $result = getQuery($q);

                                    echo '<form action="/uspesna_posodobitev.php">';
                                    
                                    while($row = mysqli_fetch_assoc($result)) {

                                        if($row["COLUMN_NAME"] == 'Proizvajalec_id'){
                                            echo '<div class="form-group">
                                                    <label>Proizvajalec</label>
                                                    <select class="form-control" name="proizvajalec">';
                                            while($proizvajalec = mysqli_fetch_assoc($proizvajalci)){
                                                echo '<option value="'.$proizvajalec['naziv'].'">'.$proizvajalec['naziv'].'</option>';
                                            }
                                            echo '  </select>
                                                  </div>';
                                        }else if($row["COLUMN_NAME"] != 'id'){

                                            echo '<div class="form-group mt-2">';
                                            echo '  <label>'.$row["COLUMN_NAME"].'</label>';
                                            if($row['COLUMN_NAME'] == 'model' || $row['COLUMN_NAME'] == 'slika'){
                                                echo '  <input name="'.$row["COLUMN_NAME"].'" class="form-control" type="text" required>';
                                            }else if($row['COLUMN_NAME'] == 'cena'){
                                                echo '  <input name="'.$row["COLUMN_NAME"].'" class="form-control" type="number" required>';
                                            }else{
                                                echo '  <input name="'.$row["COLUMN_NAME"].'" class="form-control" type="text"';
                                            }
                                            echo '</div>';
                                        }

                                        
                                    }
                                    echo '<input type="hidden" name="kategorija" class="btn btn-success" value="'.$_GET['kategorija'].'">';
                                    echo '<input type="hidden" name="akcija" class="btn btn-success" value="brisanje_izdelka">';
                                    echo '<button type="submit" class="btn btn-primary btn-block"> Potrdi  </button>';
                                    echo '</form>';
                                }else if($_GET['akcija'] == 'brisanje_izdelka'){ // akcija == brisanje
                                    
                                    $modeli = "SELECT model FROM ".$_GET['kategorija']." ORDER BY model;";
                                    $result = getQuery($modeli);

                                    echo '<form action="/uspesna_posodobitev.php">';
                                    echo '<label> Izberite produkt ki ga želite odstraniti </label>';
                                    echo '  <select class="form-control" name="model">';
                                    while($row = mysqli_fetch_assoc($result)) {
                                        echo '<option value="'.$row['model'].'">'.$row['model'].'</option>';
                                    }
                                    echo '  </select>';
                                    echo '<div class="form-group mt-2">';
                                    echo '<input type="hidden" name="kategorija" class="btn btn-success" value="'.$_GET['kategorija'].'">';
                                    echo '<input type="hidden" name="akcija" class="btn btn-success" value="brisanje_izdelka">';
                                    echo '<button type="submit" class="btn btn-primary btn-block"> Potrdi  </button>';
                                    echo '</div>';
                                    echo '</form>';
                                }
                            }
                        ?>
                        
                        
                    </article>
                </div>
            </div>
        
        </div>

    </div>


    <script src="/js/jquery.min.js"></script>
    <script src="/js/umd/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</body>
</html>