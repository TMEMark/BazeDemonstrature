<?php
// PRILAGODITI podatke
// ovdje unosite svoje korisničko ime (završava s _21)
$student='mbuljan_19';
// ovdje unosite ime baze na kojoj radite (završava s _21_20)
$baza='mbuljan_19_18';
// ovdje unosite ime tablice na kojoj radite
$imeTablice='kuhar';
// ovdje unosite ime direktorija u kojem se nalazi 5 datoteka (konfiguracija i c.r.u.d.phtml)
// unutar direktorija baze za svaki CRUD zadatak kreira se poseban direktorij koji se ovdje navodi.
$direktorij='VK2_kuhar';


/*
Primjer
$student='profesor_21';
$baza='profesor_21_20';
$imeTablice='autor';
$direktorij='osoba';
*/










// ne mijenjati sljedeće linije
$putanja='/nastava20212022/' . $student . '/baze/' . $direktorij . '/';
$read='/nastava20212022/omsdm_21/baze/read.php?student=' . $student . '&baza=' . $baza . '&tablica=' . $imeTablice . '&direktorij=' . $direktorij;
$create='/nastava20212022/omsdm_21/baze/create.php?student=' . $student . '&baza=' . $baza . '&tablica=' . $imeTablice . '&direktorij=' . $direktorij;
$update='/nastava20212022/omsdm_21/baze/update.php?student=' . $student . '&baza=' . $baza . '&tablica=' . $imeTablice . '&direktorij=' . $direktorij;
$delete='/nastava20212022/omsdm_21/baze/delete.php?student=' . $student . '&baza=' . $baza . '&tablica=' . $imeTablice . '&direktorij=' . $direktorij;
$createPost='/nastava20212022/omsdm_21/baze/create.php';
$updatePost='/nastava20212022/omsdm_21/baze/update.php';
$deletePost='/nastava20212022/omsdm_21/baze/delete.php';

