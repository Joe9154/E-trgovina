<?php
session_start();
$errors = [];
if(!isset($_SESSION['kosarica'])) header("Location: index.php");   
if(count($_SESSION['kosarica']) == 0) header("Location: index.php");

foreach($_SESSION['kosarica'] as $key => $value){
    foreach($_POST as $key2 => $value2){
        if($value[1] == $key2){
           $_SESSION['kosarica'][$key][2] = $value2; //nastavimo st kosov ki jih uporabnik zeli kupiti
        }
    }
}


if(isset($_POST['placaj'])){ 
    if($_POST['nacin_placila'] == 'predracun'){

        if( $_POST['naslov'] == "" || $_POST['mesto'] == "" || $_POST['postna_stevilka'] == ""){
            $errors[] = "Prosimo izpolnite vsa polja!";
        }else{
            $_SESSION['naslov'] = $_POST['naslov'];
            $_SESSION['mesto'] = $_POST['mesto'];
            $_SESSION['postna_stevilka'] = $_POST['postna_stevilka'];
            header("Location: placilo_upn.php");
        }
        
    }
}

?>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <title>Plačilo</title>
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
        <div class="row mt-5 mb-5">
            <a href="/index.php" class="mx-auto d-block"><img class="w-50 mx-auto d-block" src="/assets/images/website_design/logo.png"></a>
        </div>
        <div class="row h-100 justify-content-center align-items-center mt-5">
            <div class="col-6">
                <div class="card">
                    <article class="card-body">
                        <a href="/index.php" class="float-right btn btn-outline-primary">Domov</a>
                        <h4 class="card-title mb-4 mt-1">Plačilo</h4>
                        <form role="form" method="post" action="">
                            <div class="form-group">
                                <label>Izberite način plačila</label>
                                <select class="form-control" name="nacin_placila">
                                    <option value="predracun" selected>Predračun (TRR)</option>
                                    <option value="mastercard" disabled>Mastercard</option>
                                    <option value="visa" disabled>Visa</option>
                                    <option value="paypal" disabled>Paypal</option>
                                    <option value="discover" disabled>Discover</option>
                                    <option value="american_express" disabled>American Express</option>
                                    <option value="stripe" disabled>Stripe</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Vpišite željeni naslov dostave</label>
                                <input name="naslov" class="form-control" placeholder="Ulica in hišna številka" type="text" required>
                                <input name="mesto" class="form-control" placeholder="Mesto" type="text" required>
                                <input name="postna_stevilka" class="form-control" placeholder="Poštna številka" type="text" required>
                            </div>

                            <div class="form-check mb-3">
                                <input type="checkbox" class="form-check-input" name="sestavi">
                                <label class="form-check-label" for="exampleCheck1">Želim, da mi računalnik sestavite iz izbranih komponent</label>
                            </div>
                            
                            <div class="form-group">
                                <input type="hidden" name="placaj" value="true">
                                <button type="submit" class="btn btn-primary btn-block"> Nadaljuj  </button>
                            </div>

                            <?php 
                                if(count($errors) > 0){
                                    echo '<div class="alert alert-danger" role="alert">';
                                    foreach($errors as $value){
                                        echo '• '.$value.'<br>';
                                    }
                                    echo '</div>';
                                }
                            ?>                                                         
                        </form>
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