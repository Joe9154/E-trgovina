<?php 
session_start();

$notInArray = false;
if(isset($_GET['dodaj_izdelek_kategorija']) && isset($_GET['dodaj_izdelek_model'])){
    $izdelek_kategorija = urlencode($_GET['dodaj_izdelek_kategorija']);
    $izdelek_model = urlencode($_GET['dodaj_izdelek_model']);
    if(!in_array([$izdelek_kategorija, $izdelek_model], $_SESSION['kosarica'])){
        $notInArray = true;
        $_SESSION['kosarica'][] = [$izdelek_kategorija, $izdelek_model, 1]; //kategorija, model, st kosov
    }
}

?>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <title>Moja trgovina</title>
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
                    <li class="nav-item active social-icons"> <a class="nav-link text-white" href="#"> <i class="fa fa-facebook"></i> </a> </li>
                    <li class="nav-item active social-icons"> <a class="nav-link text-white" href="#"> <i class="fa fa-twitter"></i> </a> </li>
                    <li class="nav-item active social-icons"> <a class="nav-link text-white" href="#"> <i class="fa fa-envelope"></i> </a> </li>
                    <li class="nav-item active social-icons"> <a class="nav-link text-white" href="#"> <i class="fa fa-instagram"></i> </a> </li>
                    <li class="nav-item active social-icons"> <a class="nav-link text-white" href="#"> <i class="fa fa-youtube"></i> </a> </li>
                    <li class="nav-item active social-icons pinterest-margin"> <a class="nav-link text-white" href="#"> <i class="fa fa-pinterest"></i> </a> </li>
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
                        echo '<a href="/spremeni-podatke.php"> <button type="button" class="btn btn-outline-secondary" data-toggle="tooltip" data-placement="bottom" title="Sprememba podatkov"><i class="fa fa-user-circle-o glavrih"></i> '.$_SESSION['ime'].' '.$_SESSION['priimek'].'</button></a>';
                    }else{
                        echo '<a href="/prijava.php"> <button type="button" class="btn btn-outline-secondary">Prijava/Registracija </button></a>';
                    }
                ?>
            </div>
            <div class="col-lg-1 mt-4">
            <a href="/kosarica.php" class="second-navbar-icons" data-toggle="tooltip" title="Moja košarica"><i class="fa fa-shopping-basket "></i></a>&nbsp; <a href="/placilna_sredstva.php" class="second-navbar-icons" data-toggle="tooltip" title="Načini plačila"> <i class="fa fa-credit-card"></i> </a>
            </div>

        </div>

        <div class="row">                                                       <!-- TRETJI NAVBAR -->
            <div class="col-lg-3 pt-2 pb-2 zeleno-ozadje">
                <i class="fa fa-bars kategorije-ikona"></i><p class="h2 ml-2">Kategorije</p><i class="fa fa-angle-down kategorije-ikona kategorije-ikona-dol"></i>
            </div>
            <div class="col-lg-3 ml-5">
                <div class="row mt-1">
                    <span class="mb-2"><i class="fa fa-truck kategorije-ikona"></i>‏‏</span>‏‏‎ ‎‏‏‎ ‎
                    <span class="h5"><b>Hitra dostava</b></span>
                </div>
                <div class="row">
                    <span class="text-muted mt-n2">V roku 1-3 delovnih dni</span>
                </div>
            </div>

            <div class="col-lg-3 ml-n4">
                <div class="row mt-1">
                    <span class="mb-2"><i class="fa fa-money kategorije-ikona"></i>‏‏</span>‏‏‎ ‎‏‏‎ ‎
                    <span class="h5"><b>Odlična cena</b></span>
                </div>
                <div class="row">
                    <span class="text-muted mt-n2">Za vse kategorije izdelkov</span>
                </div>
            </div>

            
            <div class="col-lg-3 ml-n4">
                <div class="row mt-1">
                    <span class="mb-2"><i class="fa fa-shopping-bag kategorije-ikona"></i>‏‏</span>‏‏‎ ‎‏‏‎ ‎
                    <span class="h5"><b>Več poslovalnic</b></span>
                </div>
                <div class="row">
                    <span class="text-muted mt-n2">Po vsej Sloveniji</span>
                </div>
            </div>
        </div>
        <div class="row"> <!-- Glavni produkt na strani in kategorije -->
            <div class="col-lg-1">
                <ul class="nav flex-column same-col">
                    <li class="nav-item mt-4">
                        <img src="/assets/images/website_design/cpu.png" class="ikone-komponente">
                    </li>
                    <li class="nav-item mt-3">
                        <img src="/assets/images/website_design/graficna.png" class="ikone-komponente">
                    </li>
                    <li class="nav-item mt-3">
                        <img src="/assets/images/website_design/ram.png" class="ikone-komponente">
                    </li>
                    <li class="nav-item mt-4">
                        <img src="/assets/images/website_design/motherboard.png" class="ikone-komponente">
                    </li>
                    <li class="nav-item mt-4">
                        <img src="/assets/images/website_design/storage.png" class="ikone-komponente">
                    </li>
                    <li class="nav-item mt-4">
                        <img src="/assets/images/website_design/cpu_cooler.png" class="ikone-komponente">
                    </li>
                    <li class="nav-item mt-3">
                        <img src="/assets/images/website_design/case_2.png" class="ikone-komponente">
                    </li>
                    <li class="nav-item mt-4">
                        <img src="/assets/images/website_design/power_supply.png" class="ikone-komponente">
                    </li>
                </ul>
            </div>
            <div class="col-lg-2 ml-n4">
                <ul class="nav flex-column same-col">
                    <li class="nav-item mt-4 obroba">
                        <a class="nav-link kategorije-nav" href="/isci.php?dodaj_izdelek_kategorija=cpu">CPU <span class="float-right"><i class="fa fa-chevron-right"></i></span></a>
                    </li>
                    <li class="nav-item mt-3 obroba">
                        <a class="nav-link kategorije-nav" href="/isci.php?dodaj_izdelek_kategorija=graficna">Grafične <span class="float-right"><i class="fa fa-chevron-right"></i></span></a>
                    </li>
                    <li class="nav-item mt-3 obroba">
                        <a class="nav-link kategorije-nav" href="/isci.php?dodaj_izdelek_kategorija=ram">Pomnilnik <span class="float-right"><i class="fa fa-chevron-right"></i></span></a>
                    </li>
                    <li class="nav-item mt-3 obroba">
                        <a class="nav-link kategorije-nav" href="/isci.php?dodaj_izdelek_kategorija=motherboard">Matične plošče <span class="float-right"><i class="fa fa-chevron-right"></i></span></a>
                    </li>
                    <li class="nav-item mt-3 obroba">
                        <a class="nav-link kategorije-nav" href="/isci.php?dodaj_izdelek_kategorija=storage">HDD in SSD <span class="float-right"><i class="fa fa-chevron-right"></i></span></a>
                    </li>
                    <li class="nav-item mt-3 obroba">
                        <a class="nav-link kategorije-nav" href="/isci.php?dodaj_izdelek_kategorija=cpu_cooler">CPU hladilniki<span class="float-right"><i class="fa fa-chevron-right"></i></span></a>
                    </li>
                    <li class="nav-item mt-3 obroba">
                        <a class="nav-link kategorije-nav" href="/isci.php?dodaj_izdelek_kategorija=case_2">Ohišja <span class="float-right"><i class="fa fa-chevron-right"></i></span></a>
                    </li>
                    <li class="nav-item mt-3">
                        <a class="nav-link kategorije-nav" href="/isci.php?dodaj_izdelek_kategorija=power_supply">Napajalniki <span class="float-right"><i class="fa fa-chevron-right"></i></span></a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-6 ml-2 animation">
                <img src="./assets/images/product_images/graficna/AsusGTX650-DCT-1GD5.jpg" class="showcase-img">
            </div>
            <div class="col-lg-2 showcase-opis animation">
                <h3 class="font-weight-light mt-5">Asus</h3>
                <h6 class="font-italic">GTX650-DCT-1GD5</h6>
                <h6 class="font-weight-lighter">199.99 €</h6>

            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron text-center">
                <h1>Največja ponudba računalniških komponent</h1>
                <p>Nudimo tudi možnost dodatnega povpraševanja!</p> 
                </div>
            </div>
        </div>    

        <?php 
            require_once 'printProduct.php';
            printProduct("graficna",1);
            printProduct("case_2",1);
            printProduct("motherboard",1);
            printProduct("power_supply",1);
            //printProduct("cpu",1);
            //printProduct("cpu_cooler",1);
            //printProduct("storage",1);
            //printProduct("ram",1);
          


         
           
            
        ?>
            
            <div class="col-lg-3">
                
            </div>
            <div class="col-lg-3">
                
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                
            </div>
            <div class="col-lg-3">
                
            </div>
            <div class="col-lg-3">
                
            </div>
            <div class="col-lg-3">
                
            </div>
        </div>
        <div class="row"> <!-- Carousel -->
            <div class="col-lg-12 mt-5">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block" src="/assets/images/product_images/cpu/IntelCorei5-9600K.jpg" alt="First slide">
                            <div class="carousel-caption rounded-pill bg-mydark">
                                <h5>Najnovejši Intel procersorji družine i5</h5>
                                <p>Zdaj z še večjim predpomnilnikom!</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block" src="/assets/images/product_images/cpu/IntelCorei7-6700.jpg" alt="Second slide">
                            <div class="carousel-caption rounded-pill bg-mydark">
                                <h5>Najnovejši Intel procersorji družine i7</h5>
                                <p class="bg-gradient-light text-white">Zdaj z še višjimi frekvencami!</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block" src="/assets/images/product_images/cpu/AMDRyzen31200.jpg" alt="Third slide">
                            <div class="carousel-caption rounded-pill bg-mydark">
                                <h5>Najnovejši AMD Ryzen procesorji</h5>
                                <p class="bg-gradient-light text-white">Z integrirano VEGA grafiko!</p>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Naprej</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Nazaj</span>
                    </a>
                </div>
            </div>
        </div>

    </div>
    

    <footer class="footer"> <!-- footer -->
    <div class="container">
        <div class="row">
        <div class="col-sm-3">
            <div class="footer-widget">
            <h3>Kontakt</h3>
            <div class="footer-widget-content">
                <a href="#" class="contact-link">email@trgovina.si</a>
                <a href="#" class="contact-link kontakt-spacing"> posta@trgovina.si </a>
                <a href="#" class="contact-link">(01) 2456 789</a>
                <div class="footer-social">
                <ul>
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                <li><a href="#"><i class="fa fa-rss"></i></a></li>
                </ul>
                </div>
            </div>
            </div>
        </div>
        <div class="col-sm-3">
        <div class="footer-widget">
            <h3>Dogodki</h3>
            <div class="footer-widget-content">
            <div class="media">
                <div class="media-left">
                    <a href="#" class="text-dark"><i class="fa fa-bullhorn fa-lg"></i></a>
                </div>
                <div class="media-body">
                    <p class="opis-dogodka"><a href="#">Praznovanje 20. obletnice </a></p>
                    <span>26. september 2020 </span>
                </div>
            </div>
            <div class="media">
                <div class="media-left">
                    <a href="#." class="text-dark"><i class="fa fa-bullhorn fa-lg"></i></a>
                </div>
                <div class="media-body">
                    <p class="opis-dogodka"><a href="#"> Razprodaja grafičnih kartic  </a></p>
                    <span>21. avgust 2020  </span>
                </div>
            </div>
            </div>
            </div>
        </div>
        <div class="col-sm-3">
        <div class="footer-widget">
            <h3>Odpiralni časi</h3>
            <div class="footer-widget-content">
            <div class="open-time ">
            <ul class="opening-time">
                <li><span><i class="fa fa-check"></i></span><p class="clock-time"><strong>Ponedeljek :</strong> 8:00 - 16:00</p>
                </li>
                <li><span><i class="fa fa-check"></i></span><p><strong>Tor-Pet :</strong> 8:00 - 18:00</p></li>
                <li><span><i class="fa fa-check"></i></span><p><strong>Sob-Ned :</strong> 8:00 - 14:00</p></li>
                <li><span><i class="fa fa-times"></i></span><p><strong>Prazniki :</strong> Zaprto </p></li>
            </ul>
            </div>
            </div>
            </div></div>
        
        <div class="col-sm-3">
        <div class="footer-widget">
            <h3>Piškotki</h3>
            <div class="footer-widget-content">
            <div class="media">
                
                <div class="media-body">
                    <p class="opis-dogodka"><a href="#">Ta stran za uporablja piškotke za izboljšanje uporabniške izkušnje. </a></p>
                    <span> V kolikor se ne strinjate z njihovo uporabo, prosimo zapustite stran. </span>
                </div>
            </div>
            </div>
            </div>
        </div>
        </div>
        </div>
    </div>
    </footer>

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

</html>