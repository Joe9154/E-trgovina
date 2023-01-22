<?php
session_start();
if(!isset($_SESSION['kosarica'])) header("Location: index.php");   
if(count($_SESSION['kosarica']) == 0) header("Location: index.php");



// !!!!!!!!!!!!!!!!!


define("_SYSTEM_TTFONTS", "C:/Windows/Fonts/");
require('./tfpdf/tfpdf.php');

$pdf = new tFPDF('p','mm', 'A4');
$pdf->AddPage();
$pdf->AddFont('Arial','','arial.ttf',true);
$pdf->AddFont('ArialBold','','arialbd.ttf',true);

//set font to arial, bold, 14pt
$pdf->SetFont('ArialBold','',14);

//Cell(width , height , text , border , end line , [align] )

$pdf->Cell(130 ,5,'TRGOVINA d.o.o.',0,0);

$pdf->Cell(59 ,5,"PREDRAČUN",0,1);//end of line

//set font to arial, regular, 12pt
$pdf->SetFont('Arial','',12);

$pdf->Cell(130 ,5,'Ljubljanska cesta 1',0,0);
$pdf->Cell(59 ,5,'',0,1);//end of line

$datum_izdaje = date("d.m.Y");
$pdf->Cell(120 ,5,'1000 Ljubljana',0,0);
$pdf->Cell(35 ,5,'Datum izdaje',0,0);
$pdf->Cell(44 ,5,$datum_izdaje,0,1,'L');//end of line

$pdf->Cell(120 ,5,'Telefon [+12345678]',0,0);
$pdf->Cell(35 ,5,'Račun #',0,0);
$pdf->Cell(44 ,5,rand(10000,99999),0,1,'L');//end of line

$datum_veljavnosti = date('d-m-Y', strtotime(date("d-m-Y"). ' + 15 days'));
$datum_veljavnosti = str_replace('-','.',$datum_veljavnosti);
$pdf->Cell(120 ,5,'Fax [+12345678]',0,0);
$pdf->Cell(35 ,5,'Datum veljavnosti',0,0);
$pdf->Cell(44 ,5,$datum_veljavnosti,0,1,'L');//end of line

//make a dummy empty cell as a vertical spacer
$pdf->Cell(189 ,10,'',0,1);//end of line

//billing address
$pdf->Cell(100 ,5,'Stranka',0,1);//end of line
$pdf->Cell(100,5,'',0,1);

$pdf->Cell(5 ,5,'',0,0);
$pdf->Cell(90 ,5,$_SESSION['ime'].' '.$_SESSION['priimek'],0,1);

$pdf->Cell(5 ,5,'',0,0);
$pdf->Cell(90 ,5,$_SESSION['naslov'],0,1);

$pdf->Cell(5 ,5,'',0,0);
$pdf->Cell(90 ,5,$_SESSION['postna_stevilka'].' '.$_SESSION['mesto'],0,1);

//make a dummy empty cell as a vertical spacer
$pdf->Cell(189 ,10,'',0,1);//end of line

//invoice contents
$pdf->SetFont('Arial','B',12);

$pdf->Cell(130 ,5,'Izdelek',1,0);
$pdf->Cell(25 ,5,'St. kosov',1,0);
$pdf->Cell(34 ,5,'Cena na kos',1,1);//end of line

$pdf->SetFont('Arial','',12);

//Numbers are right-aligned so we give 'R' after new line parameter
require_once "mojQuery.php";
$skupaj_cena = 0;
foreach($_SESSION['kosarica'] as $key => $value){
    $q = 'SELECT g.model, p.naziv, g.cena FROM '.urldecode($value[0]).' g INNER JOIN proizvajalec p ON p.id = g.Proizvajalec_id WHERE g.model = "'.str_replace('+',' ',urldecode($value[1])).'";';
    $result = getQuery($q);
    $row = mysqli_fetch_assoc($result);

    $model = $row['model'];
    $naziv = $row['naziv'];
    $cena =  number_format($row['cena'], 2, ',', '.');
    $skupaj_cena += ($row['cena']*$value[2]);

    $pdf->Cell(130 ,5,$naziv.' '.$model,1,0);
    $pdf->Cell(25 ,5,$value[2],1,0);
    $pdf->Cell(34 ,5,$cena,1,1,'R');//end of line
}

//summary
$pdf->Cell(130 ,5,'',0,0);
$pdf->Cell(25 ,5,'Skupaj',0,0);
$pdf->Cell(4 ,5,"€",1,0);
$pdf->Cell(30 ,5,$skupaj_cena,1,1,'R');//end of line

$pdf->SetFont('Arial','',10);

$pdf->Cell(189 ,15,'',0,1);//spacer

$pdf->Cell(189 ,5,'V skladu z vašim povpraševanjem smo vam pripravili ponudbo - predračun.',0,1);
$pdf->Cell(189 ,5,'V pričakovanju pozitivnega odgovora se vam zahvaljujemo za vaše zaupanje in se veselimo nadaljnega sodelovanja.',0,1);
$pdf->Cell(189 ,5,'',0,1);//spacer
$pdf->Cell(189 ,5,'ROK DOBAVE: Po dogovoru',0,1);
$pdf->Cell(189 ,10,'',0,1);//spacer
$pdf->Cell(189 ,5,'Znesek nakažite na TRR pri XXX banki: SI56 0000 0000 0000 000. Obvezno navedite sklicno številko.',0,1);


$pdf->Output();
?>