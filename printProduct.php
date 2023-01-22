<?php

function clean($string) {
    $string = str_replace(' ', '-', $string); // Replaces all spaces with hyphens.
 
    return preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars.
 }

function printProduct($cat, $limit, $customQuery=""){ //cat = category, limit = št vrstic za izpis, customQuery = iskanje preko search bar-a
    require_once 'mojQuery.php';
    if($customQuery == ""){
        $q = "SELECT * FROM ".$cat." g INNER JOIN proizvajalec p ON p.id = g.Proizvajalec_id ORDER BY RAND() LIMIT ".($limit*4).";";
    }else{
        $q = "SELECT * FROM ".$cat." g INNER JOIN proizvajalec p ON p.id = g.Proizvajalec_id WHERE (p.naziv LIKE '%".$customQuery."%') OR (g.model LIKE '%".$customQuery."%') ORDER BY RAND() LIMIT ".($limit*4).";";
    }
    $result = getQuery($q);
    $counter2 = 0;
    
    if (mysqli_num_rows($result) > 0) { 
        while($row = mysqli_fetch_assoc($result)) {
            if($counter2%4 === 0){
                echo '<div class="row">';
            }
        echo ' <!-- Produkt -->';

        echo '<div class="col-lg-3">';
        echo '  <figure class="card card-product">';
        echo '      <a href="#" data-toggle="modal" data-target="#A'.clean($row['model']).'">';
        echo '          <div class="img-wrap">';
        echo '              <img src="./assets/images/product_images/'.$cat.'/'.$row['slika'].'">';
        echo '          </div>';
        echo '          <figcaption class="info-wrap">';
        echo '              <h4 class="title izdelki-link">'.$row['naziv'].'</h4>';
        echo '              <p class="desc izdelki-link">'.$row['model'].'</p>';
        echo '              <div class="rating-wrap">';
        echo '                  <div class="label-rating">';
        $counter = 0; //za zvezdice
        for($i = 0; $i < $row['ocena']; $i++){
            $counter++;
            echo '<span class="fa fa-star"></span>';
        }
        for($i = $counter; $i < 5; $i++){
            echo '<span class="fa fa-star-o"></span>';
        }
        echo '                  </div>';
        echo '              </div>';
        echo '          </figcaption>';
        echo '       </a>';
        echo '          <div class="bottom-wrap">';
                            if(!isset($_SESSION['id'])){ // v kosarico lahko damo samo ce smo prijavljeni
                                echo '<a href="/prijava.php" class="btn btn-sm btn-primary float-right">V košarico</a>';
                            }else{
                                echo '<form><input type="hidden" name="dodaj_izdelek_kategorija" value="'.$cat.'">';
                                echo '<input type="hidden" name="dodaj_izdelek_model" value="'.urlencode($row['model']).'">';
                                echo '<button type="submit" class="btn btn-sm btn-primary float-right">V košarico</button></form>';
                            }
        echo '              <div class="price-wrap h5">';
        echo '                  <span class="price-new">'.$row['cena'].'€</span> <del class="price-old">'.(round($row['cena']*(1.3),2)).'</del>';
        echo '              </div>';
        echo '          </div>';
        echo '      ';
        echo '  </figure>'; 
        echo '</div>';

        echo '
        <!-- Modal -->
            <div class="modal fade" id="A'.clean($row['model']).'" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-body bg-light rounded-lg border">
                        <div class="container-fluid">
                            <div class="row mt-3 mb-2">

                                <div class="col-lg-6">                                          <!-- slika izdelka -->
                                    <img src="./assets/images/product_images/'.$cat.'/'.$row['slika'].'" class="img-fluid pr-2">
                                </div>

                                <div class="col-lg-6"> <!-- info o izdelku -->

                                    <div class="row">  
                                        <h3 class="mt-1 mb-1">'.$row['naziv'].'</h3>            <!-- Naziv -->
                                    </div>

                                    <div class="row">
                                        <p class="desc izdelki-link">'.$row['model'].'</p><br> <!-- Ime izdelka -->
                                    </div>

                                    <div class="row">
                                        <div class="label-rating pb-2">                    <!-- Rating --> ';                    
                                            $counter = 0; //za zvezdice
                                            for($i = 0; $i < $row['ocena']; $i++){
                                                $counter++;
                                                echo '<span class="fa fa-star"></span>';
                                            }
                                            for($i = $counter; $i < 5; $i++){
                                                echo '<span class="fa fa-star-o"></span>';
                                            }
                                    echo '</div>
                                    </div>';

                                    if($cat == 'graficna'){ // GRAFICNE
                                    
                                echo '  <div class="row">                                             <!-- Chipset -->
                                            <div class="col-lg-4"><i class="fa fa-angle-right"></i><strong> Chipset</strong>: </div><div class="col-lg-8 ml-n3">'.$row['chipset'].'</div>
                                        </div>

                                        <div class="row">                                              <!-- Interface -->
                                            <div class="col-lg-4"><i class="fa fa-angle-right"></i><strong> Interface:</strong> </div><div class="col-lg-8 ml-n3">'.$row['interface'].'</div>
                                        </div>

                                        <div class="row">                                               <!-- Video ram -->
                                            <div class="col-lg-4"><i class="fa fa-angle-right"></i><strong> Vram:</strong> </div><div class="col-lg-8 ml-n3">'.round($row['vram']/1000000000,2).' GB</div>
                                        </div>';
                                            
                                        if($row['core_clock'] == NULL){
                                            echo '  <div class="row">
                                                        <div class="col-lg-4"><i class="fa fa-angle-right"></i><strong> Core clock: </strong> </div><div class="col-lg-8 ml-n3"><span class="text-muted"> Ni podatka </span></div>
                                                    </div>';
                                        }else{
                                            echo '  <div class="row">
                                                        <div class="col-lg-4"><i class="fa fa-angle-right"></i><strong> Core clock: </strong> </div><div class="col-lg-8 ml-n3">'.round($row['core_clock']/1000000000,2).' Ghz</div>
                                                    </div>';
                                        }
                                        if($row['boost_clock'] == NULL){
                                            echo '  <div class="row">
                                                        <div class="col-lg-4"><i class="fa fa-angle-right"></i><strong> Boost:</strong> </div><div class="col-lg-8 ml-n3"><span class="text-muted"> Ni podatka </span></div>
                                                    </div>';
                                        }else{
                                            echo '  <div class="row">
                                                        <div class="col-lg-4"><i class="fa fa-angle-right"></i><strong> Boost:</strong> </div><div class="col-lg-8 ml-n3">'.round($row['boost_clock']/1000000000,2).' Ghz</div>
                                                    </div>';
                                        }
                                        if($row['barva'] == NULL){
                                            echo '  <div class="row">
                                                        <div class="col-lg-4"><i class="fa fa-angle-right"></i><strong> Barva: </strong> </div><div class="col-lg-8 ml-n3"><span class="text-muted"> Ni podatka </span></div>
                                                    </div>';
                                        }else{
                                            echo '  <div class="row">
                                                        <div class="col-lg-4"><i class="fa fa-angle-right"></i><strong> Barva: </strong> </div><div class="col-lg-8 ml-n3">'.$row['barva'].'</div>
                                                    </div>';
                                        }
                                                                    

                                    
                                    }else if($cat == 'case_2'){ // CASE
                                    echo '  <div class="row">                                             <!-- Form factor -->
                                                <div class="col-lg-6 mr-n5"><i class="fa fa-angle-right"></i><strong> Form factor</strong>: </div><div class="col-lg-6">'.$row['form_factor'].'</div>
                                            </div>

                                            <div class="row">                                              <!-- Št. notranjih rež -->
                                                <div class="col-lg-6 mr-n5"><i class="fa fa-angle-right"></i><strong> Št. notranjih rež:</strong> </div><div class="col-lg-6">'.$row['internal_bays'].'</div>
                                            </div>

                                            <div class="row">                                              <!-- Št. zunanjih rež -->
                                                <div class="col-lg-6 mr-n5"><i class="fa fa-angle-right"></i><strong> Št. zunanjih rež:</strong> </div><div class="col-lg-6">'.$row['external_bays'].'</div>
                                            </div>';
                                                
                                            if($row['psu_wattage'] == NULL){
                                                echo '  <div class="row">
                                                            <div class="col-lg-6 mr-n5"><i class="fa fa-angle-right"></i><strong> Napajalnik: </strong> </div><div class="col-lg-6"><span class="text-muted"> Ni podatka </span></div>
                                                        </div>';
                                            }else{
                                                echo '  <div class="row">
                                                            <div class="col-lg-6 mr-n5"><i class="fa fa-angle-right"></i><strong> Napajalnik: </strong> </div><div class="col-lg-6"><span class="text-muted">'.$row['psu_wattage'].' W</span></div>
                                                        </div>';
                                            }

                                            if($row['barva'] == NULL){
                                                echo '  <div class="row">
                                                            <div class="col-lg-6 mr-n5"><i class="fa fa-angle-right"></i><strong> Barva: </strong> </div><div class="col-lg-6"><span class="text-muted"> Ni podatka </span></div>
                                                        </div>';
                                            }else{
                                                echo '  <div class="row">
                                                            <div class="col-lg-6 mr-n5"><i class="fa fa-angle-right"></i><strong> Barva: </strong> </div><div class="col-lg-6">'.$row['barva'].'</div>
                                                        </div>';
                                            }
                                    
                                    }else if($cat == 'motherboard'){ // MOTHERBOARD
                                        echo '  <div class="row">                                             <!-- Form factor -->
                                                    <div class="col-lg-6 mr-n5"><i class="fa fa-angle-right"></i><strong> Form factor</strong>: </div><div class="col-lg-6">'.$row['form_factor'].'</div>
                                                </div>

                                                <div class="row">                                              <!-- Socket -->
                                                    <div class="col-lg-6 mr-n5"><i class="fa fa-angle-right"></i><strong> Socket:</strong> </div><div class="col-lg-6">'.$row['socket'].'</div>
                                                </div>

                                                <div class="row">                                              <!-- Št. RAM rež -->
                                                    <div class="col-lg-6 mr-n5"><i class="fa fa-angle-right"></i><strong> Št. RAM rež:</strong> </div><div class="col-lg-6">'.$row['ram_slots'].'</div>
                                                </div>
                                                
                                                <div class="row">                                              <!-- Max RAM -->
                                                    <div class="col-lg-6 mr-n5"><i class="fa fa-angle-right"></i><strong> Max RAM:</strong> </div><div class="col-lg-6">'.($row['max_ram']/1000000000).' GB</div>
                                                </div>';

                                                if($row['barva'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6 mr-n5"><i class="fa fa-angle-right"></i><strong> Barva: </strong> </div><div class="col-lg-6"><span class="text-muted"> Ni podatka </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6 mr-n5"><i class="fa fa-angle-right"></i><strong> Barva: </strong> </div><div class="col-lg-6">'.$row['barva'].'</div>
                                                            </div>';
                                                }
                                    }else if($cat == 'ram'){ // RAM
                                    
                                        echo '  <div class="row">                                             <!-- Tip -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Tip</strong>: </div><div class="col-lg-6 ml-n4">'.$row['tip'].'</div>
                                                </div>
        
                                                <div class="row">                                              <!-- Št. modulov -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Št. modulov:</strong> </div><div class="col-lg-6 ml-n4">'.$row['st_modulov'].'</div>
                                                </div>
        
                                                <div class="row">                                               <!-- Hitrost -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Hitrost:</strong> </div><div class="col-lg-6 ml-n4">'.round($row['hitrost']/1000000,2).' Mhz</div>
                                                </div>
                                                
                                                <div class="row">                                               <!-- Velikost modula -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Velikost modula:</strong> </div><div class="col-lg-6 ml-n4">'.round($row['velikost_modula']/1000000000,2).' GB</div>
                                                </div>
                                                
                                                <div class="row">                                               <!-- Price per GB -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Cena na GB:</strong> </div><div class="col-lg-6 ml-n4">'.round($row['cena']/($row['st_modulov']*($row['velikost_modula']/1000000000)),2).' €</div>
                                                </div>';

                                                if($row['barva'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Barva: </strong> </div><div class="col-lg-6 ml-n4"><span class="text-muted"> Ni podatka </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Barva: </strong> </div><div class="col-lg-6 ml-n4">'.$row['barva'].'</div>
                                                            </div>';
                                                }
                                                                            
        
                                            
                                    }else if($cat == 'power_supply'){ // POWER SUPPLY
                                    
                                        echo '  <div class="row">                                             <!-- Form factor -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Form factor</strong>: </div><div class="col-lg-6 ml-n5">'.$row['form_factor'].'</div>
                                                </div>
        
                                                <div class="row">                                              <!-- Efficiency rating -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Učinkovitost:</strong> </div><div class="col-lg-6 ml-n5">'.$row['efficiency_rating'].'</div>
                                                </div>
        
                                                <div class="row">                                               <!-- Moč -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Moč:</strong> </div><div class="col-lg-6 ml-n5">'.$row['wattage'].' W</div>
                                                </div>

                                                <div class="row">                                               <!-- Modularnost -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Modularnost:</strong> </div><div class="col-lg-6 ml-n5">'.$row['modular'].'</div>
                                                </div>';
                                                    
                                                if($row['barva'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Barva: </strong> </div><div class="col-lg-6 ml-n5"><span class="text-muted"> Ni podatka </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Barva: </strong> </div><div class="col-lg-6 ml-n5">'.$row['barva'].'</div>
                                                            </div>';
                                                }
                                                                            
        
                                            
                                    }else if($cat == 'storage'){ // STORAGE
                                    
                                        echo '  <div class="row">                                             <!-- Vrsta diska -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Vrsta diska</strong>: </div><div class="col-lg-6 ml-n3">'.$row['vrsta_diska'].'</div>
                                                </div>
        
                                                <div class="row">                                              <!-- Form factor -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Form factor:</strong> </div><div class="col-lg-6 ml-n3">'.$row['form_factor'].'</div>
                                                </div>
                                                
                                                <div class="row">                                              <!-- Vmesnik -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Vmesnik:</strong> </div><div class="col-lg-6 ml-n3">'.$row['interface'].'</div>
                                                </div>
        
                                                <div class="row">                                               <!-- Kapaciteta -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Kapaciteta:</strong> </div><div class="col-lg-6 ml-n3">'.round($row['kapaciteta']/1000000000,2).' GB</div>
                                                </div>
                                                
                                                <div class="row">                                               <!-- Price per GB -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Cena na GB:</strong> </div><div class="col-lg-6 ml-n3">'.round($row['cena']/(($row['kapaciteta']/1000000000)),2).' €</div>
                                                </div>';
                                                    
                                                if($row['rpm'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> RPM: </strong> </div><div class="col-lg-6 ml-n3"><span class="text-muted"> / </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> RPM: </strong> </div><div class="col-lg-6 ml-n3">'.$row['rpm'].'</div>
                                                            </div>';
                                                }
                                                if($row['cache'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Predpomnilnik:</strong> </div><div class="col-lg-6 ml-n3"><span class="text-muted"> / </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Predpomnilnik:</strong> </div><div class="col-lg-6 ml-n3">'.round($row['cache']/1000000,2).' MB</div>
                                                            </div>';
                                                }

                                            
                                    }else if($cat == 'cpu'){ // CPU
                                    
                                        echo '  <div class="row">                                             <!-- Št. jeder -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Št. jeder</strong>: </div><div class="col-lg-6 ml-n4">'.$row['cores'].'</div>
                                                </div>
                                                
                                                <div class="row">                                               <!-- Base clock -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Base clock:</strong> </div><div class="col-lg-6 ml-n4">'.round($row['base_clock']/1000000000,2).' Ghz</div>
                                                </div>';

                                                if($row['boost_clock'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Boost clock: </strong> </div><div class="col-lg-6 ml-n4"><span class="text-muted"> / </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Boost clock:</strong> </div><div class="col-lg-6 ml-n4">'.round($row['boost_clock']/1000000000,2).' Ghz</div>
                                                            </div>';
                                                }
        
                                                echo '
                                                <div class="row">                                              <!-- TDP -->
                                                    <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> TDP:</strong> </div><div class="col-lg-6 ml-n4">'.$row['tdp'].' W</div>
                                                </div>';

                                                if($row['integrated_graphics'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Integrirana grafika:</strong> </div><div class="col-lg-6 ml-n4"><span class="text-muted"> Ni podatka </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Integrirana grafika:</strong> </div><div class="col-lg-6 ml-n4">'.$row['integrated_graphics'].'</div>
                                                            </div>';
                                                }
                                                    
                                                
                                                if($row['multithreading'] != 0){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Multithreading:</strong> </div><div class="col-lg-6 ml-n4"> Da</div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Multithreading:</strong> </div><div class="col-lg-6 ml-n4"> Ne</div>
                                                            </div>';
                                                }
                                                                            
        
                                            
                                    }else if($cat == 'cpu_cooler'){ // CPU COOLER
                                    

                                                if($row['default_rpm'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> RPM: </strong> </div><div class="col-lg-6 ml-n4"><span class="text-muted"> Ni podatka </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> RPM:</strong> </div><div class="col-lg-6 ml-n4">'.$row['default_rpm'].'</div>
                                                            </div>';
                                                }
                                                if($row['min_rpm'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Min. RPM: </strong> </div><div class="col-lg-6 ml-n4"><span class="text-muted"> Ni podatka </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Min. RPM:</strong> </div><div class="col-lg-6 ml-n4">'.$row['min_rpm'].'</div>
                                                            </div>';
                                                }
                                                if($row['max_rpm'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Max. RPM: </strong> </div><div class="col-lg-6 ml-n4"><span class="text-muted"> Ni podatka </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Max. RPM:</strong> </div><div class="col-lg-6 ml-n4">'.$row['max_rpm'].'</div>
                                                            </div>';
                                                }

                                                if($row['default_decibels'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Glasnost: </strong> </div><div class="col-lg-6 ml-n4"><span class="text-muted"> Ni podatka </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Glasnost:</strong> </div><div class="col-lg-6 ml-n4">'.$row['default_decibels'].' dB</div>
                                                            </div>';
                                                }
                                                if($row['min_decibels'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Min. glasnost: </strong> </div><div class="col-lg-6 ml-n4"><span class="text-muted"> Ni podatka </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Min. glasnost:</strong> </div><div class="col-lg-6 ml-n4">'.$row['min_decibels'].' dB</div>
                                                            </div>';
                                                }
                                                if($row['max_decibels'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Max. glasnost: </strong> </div><div class="col-lg-6 ml-n4"><span class="text-muted"> Ni podatka </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Max. glasnost:</strong> </div><div class="col-lg-6 ml-n4">'.$row['max_decibels'].' dB</div>
                                                            </div>';
                                                }

                                                if($row['velikost'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Velikost: </strong> </div><div class="col-lg-6 ml-n4"><span class="text-muted"> Ni podatka </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Velikost:</strong> </div><div class="col-lg-6 ml-n4">'.$row['velikost'].' mm</div>
                                                            </div>';
                                                }
        
                                                if($row['barva'] == NULL){
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Barva: </strong> </div><div class="col-lg-6 ml-n4"><span class="text-muted"> Ni podatka </span></div>
                                                            </div>';
                                                }else{
                                                    echo '  <div class="row">
                                                                <div class="col-lg-6"><i class="fa fa-angle-right"></i><strong> Barva: </strong> </div><div class="col-lg-6 ml-n4">'.$row['barva'].'</div>
                                                            </div>';
                                                }    

                                                                            
        
                                            
                                    }
                                    
                                    echo '  <div class="row pt-3">                                             <!-- Cena -->
                                                <div class="col-lg-6 mt-2">
                                                    <h2>'.$row['cena'].' €</h2>
                                                </div>
                                                <div class="col-lg-6">
                                                    <h6 class="font-weight-light font-italic mt-5">Slika je simbolična*</h6>
                                                </div>
                                            </div>';

                            echo '</div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>';
            if(($counter2+1)%4 === 0){ echo '</div>'; }
            $counter2++;
        }
    }
    }

?>