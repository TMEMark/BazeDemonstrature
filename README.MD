# Upute za 2. kolokvij iz Bazi podataka
## Prvi dio - funkcije, procedure, okidači
### 1. Napravite sve tablice - pripazite na nazive atributa, na tipove podataka i dodajte na kraju svake tablice engine=innodb; 
### 2. Spojite sve vanjske ključeve naredbom alter table - ostatak imate u direktoriju prviDio kolokvij.sql
### 3. Napravite funkciju - prilikom kreiranja prvo stavite delimiter raspišite CREATE FUNCTION naziv (ulazni_parametar i njegov tip podatka ako je potrebno) RETURNS tip podatka
#### Pripazite da zatvorite tijelo funkcije BEGIN END;, delimiter i vratite delimiter na izvorni ;
### 4. Napravite okidač - imate šablonu u file-u kolokvij.sql
#### Pripazite da zatvorite tijelo BEGIN END;, delimiter i vratite delimiter na izvorni ;
### 5. Napravite proceduru - prilikom kreiranja prvo stavite delimiter raspišite CREATE PROCEDURE naziv (ulazni_parametar i njegov tip podatka ako je potrebno) isto u kolokvij.sql imate primjer
#### Pripazite da zatvorite tijelo BEGIN END;, delimiter i vratite delimiter na izvorni ;

## Drugi dio - CRUD 
### 1. Preuzmite zip i raspakirajte u folder baze - ni slučajno baze velikim slovima nek sve bude malo
### 2. Kopirajte folder predlozak i paste u folder baze - "predlozak-Copy" preimenujte u naziv tablice koju radite ili prema nazivu koji vam Jaki navede
### 3. Sad bi u folderu baze trebali imati 2 foldera "predlozak" i "nazivTablice"
### 4. Otvorite VS Code i otvorite folder baze -> File -> Open folder -> baze
### 5. Otvorite file naputak.txt u folderu "nazivTablice" i pratite upute točno kako piše
### 6. Dodatna pojašnjenja imate u komentarima u fileovima u folderu drugiDio -> VK2_kuhar
### 7. Kad napravite read.php dio prebacite cijeli folder "nazivTablice" u filezillu u folder baze ili ako bude drugačije na kolokviju vidjet ćete po putanji
#### Spajanje na filezillu -> pripatize da stavite SFTP a ne FTP