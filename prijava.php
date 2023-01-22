<?php
$errors = array();
if(isset($_POST['email']) && isset($_POST['geslo'])){
    $email = filter_var($_POST['email'], FILTER_SANITIZE_STRING);
    $pass = filter_var($_POST['geslo'], FILTER_SANITIZE_STRING);

    $checkPassword = checkPassword();

    if($checkPassword['result'] === true){
        if (session_status() == PHP_SESSION_NONE) { //če seja še ne obstaja
            session_start();
        
            $_SESSION['id'] = $email;   // id = mail v seji
            $_SESSION['ime'] = $checkPassword['ime'];
            $_SESSION['priimek'] = $checkPassword['priimek'];
            $_SESSION['kosarica'] = array();
            header("Location: index.php"); 
            
        }
    }else{
        $errors[] = "Email in geslo se ne ujemata!";
    }
}

function checkPassword(){
    require_once 'mojQuery.php';
    $r = [];
    $email = filter_var($_POST['email'], FILTER_SANITIZE_STRING);
    $pass = filter_var($_POST['geslo'], FILTER_SANITIZE_STRING);

    $q = 'SELECT ime, priimek, geslo FROM uporabnik WHERE email = "'.$email.'";';
    $result = getQuery($q);
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        if(password_verify($pass,$row['geslo'])){   //ce se geslo ujema
            $r['result'] = true;
            $r['ime'] = $row['ime'];
            $r['priimek'] = $row['priimek'];
            return $r;
        }
    }
    $r['result'] = false;
    return $r;
}
?>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <title>Prijava</title>
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
                        <a href="/registracija.php" class="float-right btn btn-outline-primary">Registracija</a>
                        <h4 class="card-title mb-4 mt-1">Prijava</h4>
                        <form role="form" method="post" action="">
                            <div class="form-group">
                                <label>Vaš e-mail</label>
                                <input name="email" class="form-control" placeholder="Email" type="email">
                            </div>
                            <div class="form-group">

                                <label>Vaše geslo</label>
                                <input class="form-control" name="geslo" placeholder="********" type="password">
                            </div> 
                            
                            <div class="form-group">
                                <input type="hidden" name="prijava" value="true">
                                <button type="submit" class="btn btn-primary btn-block"> Prijava  </button>
                            </div>                                                         
                        </form>
                        <?php 
                                if(count($errors) > 0){
                                    echo '<div class="alert alert-danger" role="alert">';
                                    foreach($errors as $value){
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

    </div>


    <script src="/js/jquery.min.js"></script>
    <script src="/js/umd/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</body>