<?php 
$errorMessage = array();

function validateRegistrationForm(){
    $valid = true;
    
    foreach ($_POST as $key => $value) {    // preverimo ce je slucajno uporabnik pustil kaksno polje prazno
        if (empty($_POST[$key])) {
            $valid = false;
        }
    }

    $email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
    $pass = filter_var($_POST['novo_geslo'], FILTER_SANITIZE_STRING);
    $pass2 = filter_var($_POST['ponovno_geslo'], FILTER_SANITIZE_STRING);
    $errorMessage[] = $email;

    if($valid === true) {

        if ($pass != $pass2) {  // preverimo ce se gesla ujemata
            $errorMessage[] = 'Gesla se ne ujemata!';
            $valid = false;
        }

        
    }
    else {
        $errorMessage[] = "Prosimo izpolnite vsa polja!";
        $valid = false;
    }

    return $valid;
}

function preveriCeUporabnikZeObstaja($email){
    require_once 'mojQuery.php';
    $query = 'SELECT * FROM uporabnik WHERE email = "'.$email.'";';
    $result = getQuery($query);
    if(mysqli_num_rows($result) > 0){   //ce uporabnik ze obstaja
        return true;
    }
    return false;
}

if(isset($_POST['nova_registracija'])){ //ce je nekdo submit-ov registracijo

    if(validateRegistrationForm() === true){ //ce so podatki pravilno vpisani

        $ime = filter_var($_POST["ime"], FILTER_SANITIZE_STRING);
        $priimek = filter_var($_POST["priimek"], FILTER_SANITIZE_STRING);
        $email = filter_var($_POST["email"], FILTER_SANITIZE_STRING);
        $pass = password_hash(filter_var($_POST["novo_geslo"], FILTER_SANITIZE_STRING), PASSWORD_DEFAULT);

        if(!preveriCeUporabnikZeObstaja($email)){   //ce uporabnik se ne obstaja
            require_once 'mojQuery.php'; 
            $query = 'INSERT INTO uporabnik VALUES ("'.$email.'","'.$ime.'","'.$priimek.'","'.$pass.'");';
            $result = getQuery($query);
            if(!$result){   //ce pride do napake
                echo 'error inserting user';
            }
        }else{
            $errorMessage[] = 'Uporabnik s tem email naslovom že obstaja!';
        }

    }

    if(count($errorMessage) === 0){ // ce nimamo errorjev
        header("Location: uspesna_registracija.php"); 
    }
}



?>

<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <title>Registracija</title>
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
                        <a href="/prijava.php" class="float-right btn btn-outline-primary">Prijava</a>
                        <h4 class="card-title mb-4 mt-1">Registracija</h4>
                        <form role="form" method="post" action="">
                            <div class="form-group">
                                <label>Vaše ime</label>
                                <input name="ime" class="form-control" placeholder="Janez" type="text" oninvalid="setCustomValidity('Prosimo izpolnite to polje')" oninput="setCustomValidity('')" required>
                            </div>
                            <div class="form-group">
                                <label>Vaš priimek</label>
                                <input name="priimek" class="form-control" placeholder="Novak" type="text" oninvalid="setCustomValidity('Prosimo izpolnite to polje')" oninput="setCustomValidity('')" required>
                            </div>
                            <div class="form-group">
                                <label>Vaš e-mail</label>
                                <input name="email" class="form-control" placeholder="Email" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" oninvalid="setCustomValidity('Prosimo izpolnite to polje (Email mora vsebovati \'@\' in končnico)')" oninput="setCustomValidity('')" required>
                            </div>
                            <div class="form-group">
                                <label>Novo geslo</label>
                                <input id="pw1" class="form-control" name="novo_geslo" placeholder="********" type="password" pattern=".{8,}" oninvalid="setCustomValidity('Geslo mora vsebovati vsaj 8 znakov')" oninput="setCustomValidity('')" required>
                                <small id="pwHelp" class="form-text text-muted"> Geslo mora vsebovati vsaj 8 znakov </small>
                            </div> 
                            <div class="form-group">
                                <label>Ponovno vpišite geslo</label>
                                <input id="pw2" class="form-control" name="ponovno_geslo" placeholder="********" type="password" oninput="validate_pw2(this)" required>
                            </div> 
                            
                            <div class="form-group">
                                <input type="hidden" name="nova_registracija" value="true">
                                <button type="submit" class="btn btn-primary btn-block"> Registracija  </button>
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
                        </div>
                    </article>
                </div>
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