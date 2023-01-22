<?php 
session_start();
if(!isset($_SESSION['kosarica'])){
    header("Location: prijava.php");
}
$counter = 0;
$counter2 = 0;
if(isset($_GET['odstrani'])){
    foreach($_SESSION['kosarica'] as $key => $value){
        if($value[1] == $_GET['odstrani']){
            unset($_SESSION['kosarica'][$key]);
            break;
        }
    }
}
?>

<head>
    <title>Moja Košarica</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,800">
    <link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/styles.css">
    <link rel="stylesheet" href="/css/index.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light top-nav"></a>      <!-- PRVI NAVBAR -->
        <div class="container">      
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto"> <!-- Leva stran top navbar-a -->
                    <li class="nav-item dropdown ">
                        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Moj Račun 
                            <i class="fa fa-caret-down"></i>
                        </a>
                        <div class="dropdown-menu " aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/spremeni-podatke.php">Urejanje podatkov</a>
                            <a class="dropdown-item" href="/spremeni-podatke.php">Sprememba gesla</a>
                            <?php 
                            if(isset($_SESSION['id'])){
                                if($_SESSION['id'] == 'admin@gmail.com'){
                                    echo '<a class="dropdown-item" href="/admin.php">Nadzorna plošča</a>';
                                }
                                echo '<a class="dropdown-item" href="/odjava.php">Odjava</a>';
                            }else{
                                echo '<a class="dropdown-item" href="/prijava.php">Prijava</a>';
                            }
                            ?>
                        </div>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link text-white" href="#"> Brezplačna poštnina za nakupe na 100€ </a> 
                    </li>
                </ul>

                <ul class="navbar-nav ml-auto">  <!-- Desna stran top navbar-a -->
                    <li class="nav-item active social-icons mt-1"> <a class="nav-link text-white" href="#"> <i class="fa fa-facebook"></i> </a> </li>
                    <li class="nav-item active social-icons mt-1"> <a class="nav-link text-white" href="#"> <i class="fa fa-twitter"></i> </a> </li>
                    <li class="nav-item active social-icons mt-1"> <a class="nav-link text-white" href="#"> <i class="fa fa-envelope"></i> </a> </li>
                    <li class="nav-item active social-icons mt-1"> <a class="nav-link text-white" href="#"> <i class="fa fa-instagram"></i> </a> </li>
                    <li class="nav-item active social-icons mt-1"> <a class="nav-link text-white" href="#"> <i class="fa fa-youtube"></i> </a> </li>
                    <li class="nav-item active social-icons pinterest-margin mt-1"> <a class="nav-link text-white" href="#"> <i class="fa fa-pinterest"></i> </a> </li>
                    <li class="nav-item active">
                        <a class="nav-link text-white left-right-margin" href="/kje-smo.php"><i class="fa fa-map-marker"></i> Kje smo? </a> 
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link text-white left-right-margin" href="/kontakt.php"><i class="fa fa-volume-control-phone"></i> Kontakt </a> 
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link text-white left-right-margin" href="/o-nas.php"><i class="fa fa-info"></i> O nas </a> 
                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <div class="container"> 
        <div class="row">                                                   <!-- DRUGI NAVBAR -->
            <div class="col-lg-3">
                    <a href="/index.php"><img class='w-100 p-3' src="/assets/images/website_design/logo.png"></a>   <!-- logo -->
            </div>
            <div class="col-lg-6 mt-4">
                <form action="/isci.php">
                    <div class="input-group mb-4">
                        <input type="search" placeholder="Kaj iščete?" aria-describedby="button-addon5" name="searchQuery" class="form-control">
                        <select class="form-control" name='dodaj_izdelek_kategorija'>
                            <option value="cpu">Procesorji</option>
                            <option value="graficna">Grafične kartice</option>
                            <option value="motherboard">Matične plošče</option>
                            <option value="cpu_cooler">Hladilniki</option>
                            <option value="case_2">Ohišja</option>
                            <option value="ram">Pomnilnik</option>
                            <option value="power_supply">Napajalniki</option>
                            <option value="storage">Pomnilne enote</option>
                        </select>
                        <div class="input-group-append">
                            <button id="button-addon5" type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                        </div>
                    </div>    
                </form>
                
            </div>
            <div class="col-lg-2 mt-4">
                <?php 
                    if(isset($_SESSION['id'])){
                        echo '<a href="/spremeni-podatke.php"> <button type="button" class="btn btn-outline-secondary" data-toggle="tooltip" data-placement="bottom" title="Sprememba podatkov"><i class="fa fa-user-circle-o"></i> '.$_SESSION['ime'].' '.$_SESSION['priimek'].'</button></a>';
                    }else{
                        echo '<a href="/prijava.php"> <button type="button" class="btn btn-outline-secondary">Prijava/Registracija </button></a>';
                    }
                ?>
            </div>
            <div class="col-lg-1 mt-4">
                <a href="#" class="second-navbar-icons" data-toggle="tooltip" title="Moja košarica"><i class="fa fa-shopping-basket mt-1"></i></a>&nbsp; <a href="/placilna_sredstva.php" class="second-navbar-icons" data-toggle="tooltip" title="Načini plačila"> <i class="fa fa-credit-card"></i> </a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row mt-4">
            <div class="col-lg-3">
            </div>
            <div class="col-lg-6 text-center">
                <h1 class="display-4">Košarica</h2>
            </div>
            <div class="col-lg-3 text-right">
                <?php 
                    if(count($_SESSION['kosarica']) == 0){

                    }else{
                        echo '<form action="/placilo.php" method="post">';
                        echo '<button type="submit" class="btn btn-outline-dark btn-lg mt-3">Plačilo ‎‏‏‎ <i class="fa fa-location-arrow"></i></button>‏‏‎';
                        foreach($_SESSION['kosarica'] as $key => $value){
                            echo '<input type="hidden" id="b'.$counter2.'" name="'.$value[1].'" value="1">';
                            $counter2++;
                        }
                        echo '</form>';
                    }
                ?>
            </div>
        </div>
    </div>
    <div class="container mt-2">
        <?php 
            require_once "mojQuery.php";

            if(count($_SESSION['kosarica']) == 0) echo '<div class="row mt-5"><div class="col-4"></div><div class="col-4 text-center text-muted "><p class="h3"><em> Vaša košarica je prazna..</em></p></div><div class="col-4 eo-3-m m-glavrih"></div></div>';
            foreach($_SESSION['kosarica'] as $value){
                $q = 'SELECT g.model, p.naziv, g.cena, g.slika FROM '.urldecode($value[0]).' g INNER JOIN proizvajalec p ON p.id = g.Proizvajalec_id WHERE g.model = "'.str_replace('+',' ',urldecode($value[1])).'";';
                $result = getQuery($q);
                $row = mysqli_fetch_assoc($result);

                $model = $row['model'];
                $naziv = $row['naziv'];
                $cena =  $row['cena'];
                $slika = $row['slika'];
                $kategorija = urldecode($value[0]);
                $slika_category = "";
                $header_category = "";

                switch($kategorija){
                    case 'case_2':
                        $slika_category = "a_case";
                        $header_category = "Ohišje";
                        break;
                    case 'cpu':
                        $slika_category = "a_cpu";
                        $header_category = "Procesor";
                        break;
                    case 'cpu_cooler':
                        $slika_category = "a_cpu-cooler";
                        $header_category = "Hladilnik";
                        break;
                    case 'graficna':
                        $slika_category = "a_video-card";
                        $header_category = "Grafična kartica";
                        break;
                    case 'motherboard':
                        $slika_category = "a_motherboard";
                        $header_category = "Matična plošča";
                        break;
                    case 'power_supply':
                        $slika_category = "a_power-supply";
                        $header_category = "Napajalnik";
                        break;
                    case 'ram':
                        $slika_category = "a_memory";
                        $header_category = "Pomnilnik";
                        break;
                    case 'storage':
                        $slika_category = "a_internal-hard-drive";
                        $header_category = "Pomnilna enota";
                        break;

                    }
                
                echo '<div class="row border-top pt-4">';
                echo '  <div class="card">';                                
                echo '      <div class="card-body">';                
                echo '          <div class="row justify-content-md-center">';                
                echo '              <div class="col col-lg-3">';
                echo '                  <img src="./assets/images/product_images/'.$kategorija.'/'.$slika.'" class="img-fluid">';
                echo '              </div>';                
                echo '              <div class="col col-lg-6 pl-5">';
                echo '                  <div class="row">';
                echo '                      <div class="col-12 pt-2">';
                echo '                          <span class="text-muted font-italic">'.$header_category.'</span>';
                echo '                      </div>';
                echo '                      <div class="col-12 pt-4">';
                echo '                           <h2>'.$naziv.'</h2>';
                echo '                      </div>';
                echo '                      <div class="col-12 mt-n2">';
                echo '                           <h1 class="">'.$model.'</h1>';
                echo '                      </div>';
                echo '                      <div class="col-12 pt-3">';
                echo '                           <p class="h4">'.$cena.' €</p>';
                echo '                      </div>';
                echo '                  </div>';
                echo '              </div>';
                echo '              <div class="col-lg-2">';
                echo '                  <div class="row">';
                echo '                      <div class="col-12 pt-5">';
                echo '                          <a href="javascript:void();"><span onclick="addone('.$counter.')" class="pr-2 h4"><i class="fa fa-chevron-up"></i></span></a>';
                echo '                          <span id="a'.$counter.'" class="h3">1</span>';
                echo '                          <a href="javascript:void();"><span onclick="subtractone('.$counter.')" class="pl-2 h4"><i class="fa fa-chevron-down"></i></span></a>';
                echo '                      </div>';
                echo '                      <div class="col-12 pt-5"><form><input type="hidden" name="odstrani" value="'.$model.'"><button type="submit" class="btn btn-outline-danger">Odstrani</button></form></div></row>';
                echo '              </div>';                 
                echo '          </div>';                
                echo '      </div>';                
                echo '  </div>';                
                echo '</div>';
                $counter++;
                
            }
            
            
        ?>
    </div>

    <div class="container mt-5"></div>
    
    <script src="/js/jquery.min.js"></script>
    <script src="/js/umd/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script>
        function addone(x){
            let a = "#a";       let b = "#b";
            a = a.concat(x);    b = b.concat(x);
            $(a).text(Number($(a).text())+1);
            $(b).attr('value', Number($(b).attr('value'))+1);
        }
        function subtractone(x){
            let a = "#a";       let b = "#b";
            a = a.concat(x);    b = b.concat(x);
            if(parseInt($(a).text()) > 1){
                $(a).text(Number($(a).text())-1);
                $(b).attr('value', Number($(b).attr('value'))-1);
            }
        }
    </script>
</body>