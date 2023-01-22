<?php 
session_start();
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
$notInArray = false;
if(isset($_GET['dodaj_izdelek_kategorija']) && isset($_GET['dodaj_izdelek_model'])){
    $izdelek_kategorija = urlencode($_GET['dodaj_izdelek_kategorija']);
    $izdelek_model = urlencode($_GET['dodaj_izdelek_model']);
    if(!in_array([$izdelek_kategorija, $izdelek_model], $_SESSION['kosarica'])){
        $notInArray = true;
        $_SESSION['kosarica'][] = [$izdelek_kategorija, $izdelek_model, 1];
    }
}

?>

<head>
    <title>Iskanje</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,800?verify=4761737065724c6176726968">
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
                <form action="">
                    <div class="input-group mb-4">
                        <input type="search" placeholder="Kaj iščete?" aria-describedby="button-addon5" name="searchQuery" class="form-control">
                        <select class="form-control" name='dodaj_izdelek_kategorija'>
                            <?php 
                                echo '<option value="'.array_search($kategorije[htmlspecialchars($_GET['dodaj_izdelek_kategorija'])],$kategorije).'">'.$kategorije[htmlspecialchars($_GET['dodaj_izdelek_kategorija'])].'</option>';
                                foreach($kategorije as $key => $value){
                                    if($value != $kategorije[htmlspecialchars($_GET['dodaj_izdelek_kategorija'])]){
                                        echo '<option value="'.$key.'">'.$value.'</option>';
                                    }
                                }
                            ?>

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
                        echo '<a href="/spremeni-podatke.php"> <button type="button" class="btn btn-outline-secondary data-toggle="tooltip" data-placement="bottom" title="Sprememba podatkov""><i class="fa fa-user-circle-o"></i> '.$_SESSION['ime'].' '.$_SESSION['priimek'].'</button></a>';
                    }else{
                        echo '<a href="/prijava.php"> <button type="button" class="btn btn-outline-secondary">Prijava/Registracija </button></a>';
                    }
                ?>
            </div>
            <div class="col-lg-1 mt-4">
                <a href="/kosarica.php" class="second-navbar-icons" data-toggle="tooltip" title="Moja košarica"><i class="fa fa-shopping-basket mt-1"></i></a>&nbsp; <a href="/placilna_sredstva.php" class="second-navbar-icons" data-toggle="tooltip" title="Načini plačila"> <i class="fa fa-credit-card"></i> </a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row mt-4 mb-5">
            <div class="col-lg-3">
            </div>
            <div class="col-lg-6 text-center">
                <h1 class="display-4"><?php echo $kategorije[htmlspecialchars($_GET['dodaj_izdelek_kategorija'])]; ?></h2>
            </div>
            <div class="col-lg-3">
            </div>
        </div>
    </div>

    <div class="container"> <!-- izdelki -->
        <?php 
            require_once 'printProduct.php';
            if(isset($kategorije[htmlspecialchars($_GET['dodaj_izdelek_kategorija'])])){  //ce pritisnemo samo na neko kategorijo
                if(isset($_GET['searchQuery'])){    //ce smo nek custom search query vpisal
                    printProduct(htmlspecialchars($_GET['dodaj_izdelek_kategorija']),40,$_GET['searchQuery']);
                }else{
                    printProduct(htmlspecialchars($_GET['dodaj_izdelek_kategorija']),40);
                }
            }
        ?>
    </div>


    <div class="modal fade" id="izdelekDodan" tabindex="-1" role="dialog" aria-hidden="true"> <!-- checkmark ob vnosu v košarico -->
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="container">
                        <div class="row mt-4">
                            <canvas id="myCanvas"></canvas>
                            <img class="img checkmark-animacija" id="myCheckmark" src="/assets/images/website_design/checkmark.gif" alt="">
                        </div>
                        <div class="row mt-5 ">
                            <h3 class="text-checkmark">Izdelek dodan v košarico</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="/js/jquery.min.js"></script>
    <script src="/js/umd/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    
    <script>
    let parts = window.location.search.substr(1).split("&");    //dobimo contente URLja
        let urlparts = [];
        for (let i = 0; i < parts.length; i++) {
            let temp = parts[i].split("=");
            urlparts[i] = decodeURIComponent(temp[0]);
        }
        
        <?php
            if($notInArray){
                echo '
                    if(urlparts.includes("dodaj_izdelek_kategorija") && urlparts.includes("dodaj_izdelek_model")){
                        $(window).on("load",function(){
                        $("#izdelekDodan").modal("show");
                        
                        let img = $("#myCheckmark")[0];
                        let c = $("#myCanvas")[0];
                        setTimeout(function () {
                            c.getContext("2d").drawImage(img, 0, 0, c.width, c.height);
                            $(img).hide();
                            $(c).show();
                        },1800);
                        });
                    }
                ';
            }
        ?>

        
    </script>
</body>