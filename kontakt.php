<?php 
session_start();
?>
<head>
    <title>Kontakt</title>
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
    <div class="container">                                         <!-- DRUGI NAVBAR -->
        <div class="row">                                                   
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
        <div class="row mt-4 mb-3">
            <div class="col-lg-2"></div>
            <div class="col-lg-8 text-center"><h1 class="display-4"> Kontaktne informacije</h2></div>
            <div class="col-lg-2"></div>
        </div>
        <div class="row mb-5">
            <div class="col-lg-3"></div>
            <div class="col-lg-6 text-center"><p class="h4 text-muted">Vstopite v stik z nami </p></div>
            <div class="col-lg-3"></div>
        </div>
        <div class="row mb-5">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <div class="row ml-5">
                    <div class="col-7"><p class="h3 ml-4"><i class="fa fa-phone fa-lg"></i>‏‏‎  ‎ ‎‎Splošne informacije:</p></div>
                    <div class="col-5"><p class="h3">‏‏‎‎(01) 2456 789</p></div>
                </div>
                <div class="row mt-3 ml-5">
                    <div class="col-7"><p class="h3 ml-4"><i class="fa fa-phone fa-lg"></i>‏‏‎  ‎ ‎‎Prodaja:</p></div>
                    <div class="col-5"><p class="h3">‏‏‎‎(01) 2456 710</p></div>
                </div>
                <div class="row mt-3 ml-5">
                    <div class="col-7"><p class="h3 ml-4"><i class="fa fa-phone fa-lg"></i>‏‏‎  ‎ Naročila po meri:</p></div>
                    <div class="col-5"><p class="h3">‏‏‎‎(01) 2456 711</p></div>
                </div>

                <div class="row mt-3 ml-5">
                    <div class="col-7"><p class="h3 ml-4"><i class="fa fa-envelope-o fa-lg"></i>‏‏‎  ‎ E-pošta:</p></div>
                    <div class="col-5"><p class="h3">email@trgovina.si</p></div>
                </div>
            </div>
            <div class="col-lg-2"></div>
        </div>
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6 text-center mt-5"><a href="/kje-smo.php"><p class="h2">Kje se nahajamo?  ‎ ‎‎<i class="fa fa-location-arrow fa-lg"></i></p></a></div>
            <div class="col-lg-3"></div>
        </div>

    </div>


    <script src="/js/jquery.min.js"></script>
    <script src="/js/umd/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</body>