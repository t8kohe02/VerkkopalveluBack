/* TIETOKANNAN LUOMINEN */
CREATE DATABASE projektitietokanta;

USE projektitietokanta;

/* TUOTERYHMÄ */
CREATE TABLE category (
id int primary key auto_increment,
name varchar(50) not null
);
insert into category(name) value ('Piirrustukset');
insert into category(name) value ('Maalaukset');
insert into category(name) value ('Valokuvat');
insert into category(name) value ('Illustrointi');
insert into category(name) value ('Tarvikkeet');

CREATE TABLE product (
id int primary key auto_increment, 
name varchar(100) not null,
price double (10,2) not null,
image varchar(50),
category_id int not null,
index category_id(category_id),
foreign key (category_id) references category(id)
on delete restrict
);

INSERT INTO product (name, price,image,category_id) VALUES ('Kedon kukkia',22,'Piirustus1.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kasvien lehdet',25,'Piirustus2.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Joutsen kuutamossa',24,'Piirustus3.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kukkakimppu',23,'Piirustus4.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirrostiikeri',24,'Piirustus5.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Sydämelliset kissat',23,'Piirustus6.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Luonnon kosketus',22,'Piirustus7.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Lintu',27,'Piirustus8.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Papukaija',27,'Piirustus9.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Flamingo',29,'Piirustus10.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Mustavalkoiset kedon kukat',12,'Piirustus11.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Voikukat',25,'Piirustus12.jpg',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Mustavalkoiset linnut oksalla',24,'Piirustus13.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirrosvuohi',16,'Piirustus14.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirroslehmä',27,'Piirustus15.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirroskissa',28,'Piirustus16.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirroskoira',26,'Piirustus17.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirroshevonen',16,'Piirustus18.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirroslammas',26,'Piirustus19.png',1) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Abstraktit värit',24,'Maalaus1.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Värein maalaus',24,'Maalaus2.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Sininen abstraktius',24,'Maalaus3.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maailmankaikkeuden värejä',24,'Maalaus4.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Punaiset vedokset',24,'Maalaus5.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Oranssien pisaroiden tanssi',24,'Maalaus6.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Keltaisia säikeitä',24,'Maalaus7.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Abstraktia vaaleissa sävyissä',24,'Maalaus8.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Tummia ja vaaleita säkeitä',24,'Maalaus9.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Tummaa pastellia',24,'Maalaus10.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Tiikerin katse',24,'Maalaus11.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Nousevan auringon maisema',24,'Maalaus12.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Lukeva nalle',24,'Maalaus13.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Musta kissa',24,'Maalaus14.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Tiikerin karjahdus',24,'Maalaus15.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Riikinkukko',24,'Maalaus16.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Vaalea kissa',24,'Maalaus17.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Epäilevä kissa',24,'Maalaus18.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Pentukoira',24,'Maalaus19.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Spanielin katse',24,'Maalaus20.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Katseleva kultainennoutaja',24,'Maalaus21.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Keskustelevat papukaijat',24,'Maalaus22.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Mäyräkoiran katse',24,'Maalaus23.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Katseleva kissa',24,'Maalaus24.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Delfiinin hyppy',24,'Maalaus25.jpg',2) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Puun kasvu järvellä',24,'Valokuva1.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Vuoristomaisemaa',24,'Valokuva2.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Auringon säteet järven päällä',24,'Valokuva3.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kotkan laskeutuminen',24,'Valokuva4.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Jäniksen havahdus',24,'Valokuva5.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Suden katse',24,'Valokuva6.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Järvikaupungin rantaa',24,'Valokuva7.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Suurkaupungin yllä',24,'Valokuva8.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Vanha auto parkissa',24,'Valokuva9.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Metropolin elämää',24,'Valokuva10.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Auringon säteet huippujen yllä',24,'Valokuva11.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Järvi talvisessa vuoristomaisemassa',24,'Valokuva12.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puut saarella',24,'Valokuva13.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Veneet järvellä',24,'Valokuva14.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kalliokieleke vehreässä laaksossa',24,'Valokuva15.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Talvinen kylä vuoristossa',24,'Valokuva16.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Yöllinen kallion seinämä',24,'Valokuva17.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Talvinen vuorimaisema',24,'Valokuva18.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puu auringon säteiden syleilyssä',24,'Valokuva19.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puu niityllä',24,'Valokuva20.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Ranta-aallokot',24,'Valokuva21.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kalliokieleke laakson yläpuolella',24,'Valokuva22.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Vehreät alangot',24,'Valokuva23.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Auringon lasku pilvien lomassa',24,'Valokuva24.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Venesatama vuoristossa',24,'Valokuva25.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kiviaskelmat vuoristoon',24,'Valokuva26.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Leijonan katse',25,'Valokuva27.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Äidin avustus',22,'Valokuva28.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Elefantti alangolla',31,'Valokuva29.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Elefantti puiden katveessa',23,'Valokuva30.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Hevonen aitauksessa',16,'Valokuva31.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Pöllön katse',26,'Valokuva32.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Joutsen lammella',26,'Valokuva33.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kilpikonna merellä',12,'Valokuva34.png',3) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Maisema ilta-aikaan',24,'Illustrointi1.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kuutamon leikki',24,'Illustrointi2.jpg',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Laskeva aurinko vuorilla',24,'Illustrointi3.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Peuroja niityllä',24,'Illustrointi4.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Laskeva aurinko',24,'Illustrointi5.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Tähdenlento',24,'Illustrointi6.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Linnut metsän yllä',24,'Illustrointi7.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Metsämaisema',24,'Illustrointi8.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puun latvat',24,'Illustrointi9.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Metsän varjot',24,'Illustrointi10.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Yöllinen järvi',24,'Illustrointi11.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Vuoret tähtien syleilyssä',24,'Illustrointi12.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Vuoret öisin',24,'Illustrointi13.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Yölliset vuoren värit',24,'Illustrointi14.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Aurinko sateen keskellä',24,'Illustrointi15.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Muuttolinnut',24,'Illustrointi16.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Talvinen metsä',24,'Illustrointi17.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Auringon kajo vuorilla',24,'Illustrointi18.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Usvaiset vuoret',24,'Illustrointi19.jpg',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Joen uoma',24,'Illustrointi20.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Lintujen lento metsän yllä',24,'Illustrointi21.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Yölliset tunturit',26,'Illustrointi22.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Synkkä metsä',16,'Illustrointi23.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maiseman kajo järven päällä',26,'Illustrointi24.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Yön pimeys',26,'Illustrointi25.png',4) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Maalaustarvikesetti: paperit, maalit ja siveltimet',24,'Tarvikkeet1.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Siveltimiä ja maaleja',24,'Tarvikkeet2.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Keinokuitusivellinpaketti',24,'Tarvikkeet3.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalauspaketti: paperia, sivellin ja maalipaletti',24,'Tarvikkeet4.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Akvarellipaperi, siveltimiö ja akvarellimaalit',24,'Tarvikkeet5.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Keinokuitusivellinsetti',24,'Tarvikkeet6.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Suuri keinokuitusivellinsetti',24,'Tarvikkeet7.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Sivellinpaketti',24,'Tarvikkeet8.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Siveltimiä ja luonnosvihko',24,'Tarvikkeet9.jpg',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Musta puukehys',14,'Tarvikkeet_Kehys1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Vaalea puukehys',14,'Tarvikkeet_Kehys2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Koristeltu kehys',17,'Tarvikkeet_Kehys3.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valkoinen puukehys',14,'Tarvikkeet_Kehys4.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Krominvärinen metallikehys',15,'Tarvikkeet_Kehys5.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Ruskea puukehys',15,'Tarvikkeet_Kehys6.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puukehys',14,'Tarvikkeet_Kehys7.png',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Kuulakärkikynä sinisellä musteella',4,'Tarvikkeet_Kyna1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Musta piirustustussi',4,'Tarvikkeet_Kyna2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kuulakärkikynä mustalla musteella',4,'Tarvikkeet_Kyna3.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Musta kynä',4,'Tarvikkeet_Kyna4.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kalligrafiakynä ja kultainen muste',5,'Tarvikkeet_Kyna5.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puuvärit 10 kpl',5,'Tarvikkeet_Kyna6.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puuvärikynäsetti',5,'Tarvikkeet_Kyna7.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Yliviivaustussi',5,'Tarvikkeet_Kyna8.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kuitukärkikynät',5,'Tarvikkeet_Kyna9.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kalligrafiatussi',5,'Tarvikkeet_Kyna10.png',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Puinen mallinukke, 15 cm',16,'Tarvikkeet_Maalaustarvike1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puinen mallinukke, 20 cm',17,'Tarvikkeet_Maalaustarvike2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puinen mallinukke, 25 cm',18,'Tarvikkeet_Maalaustarvike3.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puinen mallikäsi',16,'Tarvikkeet_Maalaustarvike4.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalauspohja telineellä',12,'Tarvikkeet_Maalaustarvike5.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Suojakäsineet',7,'Tarvikkeet_Maalaustarvike6.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kasvomaski',9,'Tarvikkeet_Maalaustarvike7.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Hengityssuojain',12,'Tarvikkeet_Maalaustarvike8.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Suojalasit',14,'Tarvikkeet_Maalaustarvike9.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Suuri maalipaletti',12,'Tarvikkeet_Maalaustarvike10.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalipaletti',9,'Tarvikkeet_Maalaustarvike11.png',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Valkoinen A4-paperi',11,'Tarvikkeet_Paperi1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Ruskea A4-paperi',13,'Tarvikkeet_Paperi2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Akvarelipaperi A3',12,'Tarvikkeet_Paperi3.png',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Akryylivärit',11,'Tarvikkeet_Maali1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Akvarellinapit',13,'Tarvikkeet_Maali2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Akvarelliväri',12,'Tarvikkeet_Maali3.png',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Pyöreä keinokuitusivellin',4,'Tarvikkeet_Pensseli1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Pieni keinokuitusivellin',4,'Tarvikkeet_Pensseli2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Keinokuitusivellinsetti, 15 erilaista sivellintä',5,'Tarvikkeet_Pensseli3.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Suuri keinokuitusivellin',6,'Tarvikkeet_Pensseli4.png',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Viivotin',5,'Tarvikkeet_Piirustustarvike1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kuviopiirtotyökalu',6,'Tarvikkeet_Piirustustarvike2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirtokynäsetti suojapenaalin',7,'Tarvikkeet_Piirustustarvike3.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puuvärit suojapenaalilla',6,'Tarvikkeet_Piirustustarvike4.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puuvärit suojakankaalla',8,'Tarvikkeet_Piirustustarvike5.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Harppi',6,'Tarvikkeet_Piirustustarvike6.png',5) ;

ALTER TABLE product
ADD description VARCHAR(500);

UPDATE product
SET description = 'Yksinkertainen kaunis piirrustus, jossa on erilaisia kukkia valkoisella taustalla. Voit yhdistää tämän ajattoman kuvan kehyksiin tai käyttää sisustukseen sellaiseen. Piirrustuksen koko on 60x40 cm, materiaalina mattapaperi.'
WHERE id = '1';

UPDATE product
SET description = 'Värikäs piirrustus, jossa on erivärisiä isoja lehtiä. Väreinä sininen, vihreä, punainen ja keltainen. Tuo elävyyttä sisustukseen ja sopii hyvin esimerkiksi keittiöön tai työhuoneeseen. Voit myös yhdistellä piirrustuksiamme kokonaisuudeksi. Tuotteen koko 70x100 cm, materiaalina mattapaperi'
WHERE id = '2';

UPDATE product
SET description = 'Kuvassa on taustalla vihreitä vuoria kuun valossa ja sinertävä taivas, jossa on kirkkaan keltainen täysikuu. Kuun edessä lentää joutsen peittäen osan kuusta. Kuva on kokoa 50x50 cm, materiaalina mattapaperi'
WHERE id = '3';

UPDATE product
SET description = 'Akryylimaaleilla maalattu taulu. Vallitseva väri on punainen ja violetti, muut värit oranssi ja sininen. Taulun koko 70 x 100 cm. '
WHERE id = '20';

UPDATE product
SET description = 'Taianomainen taulu maalattuna akryylimaaleilla. Värikäs maalaus, sisältää kirkkaita värejä sekä kauniita pastellin sävyjä. Taulun koko 70 x 100 cm.'
WHERE id = '21';

UPDATE product
SET description = 'Akryylimaaleilla maalattu syvällinen taulu. Syvän sininen mattaväri, josta erottuu vaaleita sekä kirkkaan vihreitä sävyjä. Taulun koko 70 x 100 cm. '
WHERE id = '22';

UPDATE product
SET description = 'Kaunis valokuva veden ääreltä auringonnousun aikaan.  Vedessä puu, joka heijastuu veden peilipinnasta, kuten myös taivaan värit. Kuvassa on harmoninen tunnelma. Valokuvapaperi on kiiltopintainen ja kuvan koko on 30 x 21 cm.'
WHERE id = '45';

UPDATE product
SET description = 'Henkeäsalpaava vuoristomaisema, joka heijastuu veden peilipinnasta upeasti. Valokuvassa on vahvat ja kirkkaat värit. Sininen taivas, jossa muutama hento valkoinen pilvi. Valokuvapaperi on kiiltopintainen ja kuvan koko on 30 x 21 cm.'
WHERE id = '46';

UPDATE product
SET description = 'Valokuva järven jäältä auringonlaskun aikaan. Aurinko on kuvassa juuri laskemassa horisonttiin, mutta näkyy vielä kokonaan. Muutama ohut pilvi ja harmoniset värit taivaalla, jotka heijastuvat peilijäästä kauniisti. Keskellä järveä on muutama ihminen. Valokuvapaperi on kiiltopintainen ja kuvan koko on 30 x 21 cm.'
WHERE id = '47';

UPDATE product
SET description = 'Tumman puhuva kuva. Maisema yöltä, jossa taustalla loistaa täysikuu oranssina. Maisemassa reunoilla puita ja keskellä virtaa joki vuoristojen välissä. Myös kuvan taustalla näkyy vuoriston siluetti. Puut ja kuvan etuala ovat tummat, kuu valaisee maisemaan hieman violettia sävyä ja taivaanranta näkyy oranssina. Kuvan koko 100x60 cm. '
WHERE id = '79';

UPDATE product
SET description = 'Kuvassa harmaansininen yö taivas, jota valaisee kuunsirppi. Tummat puut varjoina kuvan reunoissa ja etureunassa maa on tumma. Kuvan keskellä ihmisiä kauempana, keskimmäisenä puistonpenkillä ihminen, jolta lähtee naru kuuhun, kuin pitäisi ilmapalloa kädessä. Kuvan koko 70x90 cm'
WHERE id = '80';

UPDATE product
SET description = 'Pirteä yö maisema. Tummia puita etualalla, taustalla punertavana hohkaava vuorimaisema ja laakso. Vuorien välistä nousemassa keltainen aurinko, joka on puoliksi näkyvissä. Kuvan koko 100x60 cm'
WHERE id = '81';

UPDATE product
SET description = 'Maalaustarvikesetti, joka sopii niin aloittelevalle harrastajalle kuin kokeneemalle maalaajalle. Setti sisältää 5kpl laadukasta maalauspaperia, kaksi erilaista sivellintä sekä 5kpl eri väristä maalia, joista pystyt sekoittamaan kätevästi haluamasi sävyt. '
WHERE id = '104';

UPDATE product
SET description = 'Paketti sisältää kolme erilaista sivellintä ja neljä maalituubia: kaksi ruskeaa, kaksi keltaista, valkoinen, punainen, sininen ja musta. '
WHERE id = '105';

UPDATE product
SET description = 'Keinokuitusivellinpaketti, josta saat kaikki tarvitsemasi siveltimet. Tämä 15kpl sivellinpaketin lisäksi et tarvitse muuta kuin maalit ja paperin. Innokkaalle maalaajalle hyvä lahjaidea!'
WHERE id = '106';

/* ASIAKAS */

CREATE TABLE customer (
id int primary key auto_increment,
firstname varchar(50) not null,
lastname varchar(50) not null,
address varchar(50) not null,
zip varchar(10) not null,
city varchar(30) not null
);

INSERT INTO customer (id, firstname, lastname, address, zip, city) VALUES (1, 'Maija', 'Mehiläinen', 'Hunajakuja 12', '202020', 'Hunajakylä') ;
INSERT INTO customer (id, firstname, lastname, address, zip, city) VALUES (2, 'Prinssi', 'Ali', 'Sulttaaninkatu 14', '000000', 'Agrabah') ;
INSERT INTO customer (id, firstname, lastname, address, zip, city) VALUES (3, 'Ville', 'Vallaton', 'Jännätie 26', '00990', 'Helsinki') ;

/* TILAUS */

CREATE TABLE `order` (
id int primary key auto_increment,
order_date timestamp default current_timestamp,
customer_id int not null,
index customer_id(customer_id),
foreign key (customer_id) references customer(id)
on delete restrict
);

INSERT INTO `order` (id, order_date, customer_id) VALUES (1, '2021-12-09 18:36:42', 1) ;
INSERT INTO `order` (id, order_date, customer_id) VALUES (2, '2021-12-09 18:37:42', 2) ;
INSERT INTO `order` (id, order_date, customer_id) VALUES (3, '2021-12-09 18:38:42', 3) ;


/* TILAUSRIVI */

CREATE TABLE order_row (
order_id int not null,
index order_id(order_id),
foreign key (order_id) references `order` (id)
on delete restrict,
product_id int not null,
index product_id(product_id),
foreign key (product_id) references product(id)
on delete restrict
);

INSERT INTO order_row (order_id, product_id) VALUES (1, 59) ;
INSERT INTO order_row (order_id, product_id) VALUES (2, 86) ;
INSERT INTO order_row (order_id, product_id) VALUES (3, 69) ;

