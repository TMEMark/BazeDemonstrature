
<?php 
// OBAVEZNO UKLJUČITI U SVAKU phtml datoteku
include_once 'konfiguracija.php';
?>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Baze CRUD <?=$imeTablice?></title>
    <link rel="stylesheet" href="<?=$putanja?>css/foundation.css">
    <link rel="stylesheet" href="<?=$putanja?>css/app.css">
  </head>
<body>
    <div class="grid-container">
      <div class="grid-x grid-padding-x">
        <div class="large-12 cell">
          <div class="callout" style="margin-top: 2rem;">
            <a href="<?=$read?>" target="_blank" class="button success expanded">Read</a>
            
          </div>
        </div>
      </div>
    </div>
    <script src="<?=$putanja?>js/vendor/jquery.js"></script>
    <script src="<?=$putanja?>js/vendor/what-input.js"></script>
    <script src="<?=$putanja?>js/vendor/foundation.js"></script>
    <script src="<?=$putanja?>js/app.js"></script>
  </body>
</html>
