<?php
$errorMessage = array();
session_start();

if(!isset($_SESSION['id'])){
    header("Location: prijava.php");
}

function validateRegistrationForm(){
    $valid = true;
    
    $pass = filter_var($_POST['novo_geslo'], FILTER_SANITIZE_STRING);
    $pass2 = filter_var($_POST['ponovno_geslo'], FILTER_SANITIZE_STRING);

   
    if($pass != "" && $pass2 != ""){
        if ($pass != $pass2) {  // preverimo ce se gesla ujemata
            $errorMessage[] = 'Gesla se ne ujemata!';
            $valid = false;
        }
    }

    return $valid;
}

if(isset($_POST['nova_posodobitev'])){ //ce je nekdo submit-ov posodobitev podatkov

    if(validateRegistrationForm() === true){ //ce so podatki pravilno vpisani

        require_once 'mojQuery.php'; 
        $ime = filter_var($_POST["ime"], FILTER_SANITIZE_STRING);
        $priimek = filter_var($_POST["priimek"], FILTER_SANITIZE_STRING);
        $email = filter_var($_POST["email"], FILTER_SANITIZE_STRING);
        if($_POST["novo_geslo"] != "")
            $pass = password_hash(filter_var($_POST["novo_geslo"], FILTER_SANITIZE_STRING), PASSWORD_DEFAULT);

        if($ime != ""){
            $query = 'UPDATE uporabnik SET ime = "'.$ime.'" WHERE email="'.$_SESSION['id'].'";';
            $result = getQuery($query);
            if(!$result){echo 'error updating user';}else{ $_SESSION['ime'] = $ime;}
        }
        if($priimek != ""){
            $query = 'UPDATE uporabnik SET priimek = "'.$priimek.'" WHERE email="'.$_SESSION['id'].'";';
            $result = getQuery($query);
            if(!$result){echo 'error updating user';}else{ $_SESSION['priimek'] = $priimek;}
        }
        if($email != ""){
            $query = 'UPDATE uporabnik SET email = "'.$email.'" WHERE email="'.$_SESSION['id'].'";';
            $result = getQuery($query);
            if(!$result){echo 'error updating user';}else{ $_SESSION['id'] = $email;}
        }
        if(isset($pass)){
            $query = 'UPDATE uporabnik SET geslo = "'.$pass.'" WHERE email="'.$_SESSION['id'].'";';
            $result = getQuery($query);
            if(!$result) echo 'error updating user';
        }
        
        if(count($errorMessage) === 0){ // ce nimamo errorjev
            header("Location: uspesna_posodobitev.php"); 
        }
    }

}
?>

<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <title>Sprememba podatkov</title>
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
                        <h4 class="card-title mb-4 mt-1">Sprememba podatkov</h4>
                        <p> Vpišite nove podatke v eno ali več vnosnih polj: </p>
                        <form role="form" method="post" action="" class="mt-4">
                            <div class="form-group">
                                <label>Novo ime</label>
                                <input name="ime" class="form-control" type="text">
                            </div>
                            <div class="form-group">
                                <label>Nov priimek</label>
                                <input name="priimek" class="form-control" type="text">
                            </div>
                            <div class="form-group">
                                <label>Nov e-mail</label>
                                <input name="email" class="form-control" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
                            </div>
                            <div class="form-group">
                                <label>Novo geslo</label>
                                <input id="pw1" class="form-control" name="novo_geslo" type="password" pattern=".{8,}" oninvalid="setCustomValidity('Geslo mora vsebovati vsaj 8 znakov')" oninput="setCustomValidity('')">
                                <small id="pwHelp" class="form-text text-muted"> Geslo mora vsebovati vsaj 8 znakov </small>
                            </div> 
                            <div class="form-group">
                                <label>Ponovno vpišite novo geslo</label>
                                <input id="pw2" class="form-control" name="ponovno_geslo" type="password" oninput="validate_pw2(this)">
                            </div> 
                            
                            <div class="form-group">
                                <input type="hidden" name="nova_posodobitev" value="true">
                                <button type="submit" class="btn btn-primary btn-block"> Posodobitev  </button>
                            </div>
                                                                                 
                        </form>

                            <?php 
                                if(count($errorMessage) > 0){
                                    echo '<div class="alert alert-danger" role="alert">';
                                    foreach($errorMessage as $value){
                                        echo '• '.$value.'<br>';
                                    }
                                    echo '</div>';
                                }
                            ?>
                        
                    </article>
                </div>
            </div>
        
        </div>

    </div>

    <script> 
        function validate_pw2(pw2) {
            if (pw2.value !== $("#pw1").val()) {
                pw2.setCustomValidity("Geslo se ne ujema");
            } else {
                pw2.setCustomValidity("");
            }
        }
    </script>

    <script src="/js/jquery.min.js"></script>
    <script src="/js/umd/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</body>
</html>