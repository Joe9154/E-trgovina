<?php 
session_start();
if(isset($_GET['model'])){ //ce admin zeli dodati nov izdelek
    require_once 'mojQuery.php';
    $erros = array();

    if($_GET['akcija'] == 'dodajanje_izdelka'){
        $q = "SELECT COUNT(id) AS st FROM ".$_GET["kategorija"].";";
        $result = getQuery($q);
        $row = mysqli_fetch_assoc($result);
        $numOfItems = $row['st']; //st elementov v tabeli

        $q = "SELECT id FROM proizvajalec p WHERE p.naziv = '".$_GET['proizvajalec']."';";
        $result = getQuery($q);
        $row = mysqli_fetch_assoc($result);
        $proizvajalecID = $row['id']; //id proizvajalca

        $specs_categories = '';
        $specs = '';
        foreach($_GET as $key => $value){
            if($value != 'dodajanje_izdelka'){
                if($key != 'proizvajalec' && $key != 'kategorija'){
                    $specs_categories = $specs_categories.', '.$key;
                    if(empty($value)){
                        $value = 'NULL';
                    }else if(is_string($value) && $key != 'cena' && $key != 'ocena'){
                        $value = "'".$value."'";
                    }
                    
                    $specs = $specs.', '.$value;
                }
            }
        }

        $q = "SELECT COUNT(id) AS st FROM ".$_GET['kategorija']." WHERE model='".$_GET['model']."';";
        $result = getQuery($q);
        $row = mysqli_fetch_assoc($result);
        $numOfItemsAlreadyExist = $row['st'];
        if($numOfItemsAlreadyExist != 0){
            $erros[] = 'Ta izdelek že obstaja!';
        }else{
            $Q = 'INSERT INTO '.$_GET['kategorija'].' (id, Proizvajalec_id '.$specs_categories.') VALUES ('.($numOfItems+1).','.$proizvajalecID.$specs.');';
            $result = getQuery($Q);
        }

    }else if($_GET['akcija'] == 'brisanje_izdelka'){
        $Q = "DELETE FROM ".$_GET['kategorija']." WHERE model = '".str_replace('+',' ',$_GET['model'])."';";
        $result = getQuery($Q);

    }
}

?>


<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <title>Uspešna posodobitev</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,800">
    <link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/styles.css">
</head>

<body>

    <div class="container h-100">
        <div class="row mt-5 mb-5">
            <a href="/index.php" class="mx-auto d-block"><img class="w-50 mx-auto d-block" src="/assets/images/website_design/logo.png"></a>
        </div>
        <div class="row h-100 justify-content-center align-items-center mt-5">
            <div class="col-6">
                <div class="card">
                    <article class="card-body">
                        <div class="form-group">
                            <?php 
                                if(count($erros) == 0){
                                    echo '<h3>Uspešna posodobitev</h3>';
                                }else{
                                    foreach($erros as $value){
                                        echo '<h4>'.$value.'</h4><br>';
                                    }
                                }
                            ?>
                        </div>
                        
                        
                        <div class="form-group">
                            <a href="/index.php" class="float-right btn btn-outline-primary">Domov</a>
                        </div>                                                         
                    </article>
                </div>
            </div>
        </div>
        </div>

    </div>


    <script src="/js/jquery.min.js"></script>
    <script src="/js/umd/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</body>