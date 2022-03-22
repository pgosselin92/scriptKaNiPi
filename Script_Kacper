:'
Bill Porte - Patron

Robert Duval - Chef recherche
Nadine Dulks - Chef developpement
Herman Stamper - Chef ingenierie

Sam Francois - Recherche
Albert Chamfort - Recherche
Jeanne Latour - Recherche
Sonia Andersen - Recherche
Linus Turalds - Developpement
Ken Thompson - Developpement
Jacques Demaitre - Developpement
Rose Martin - Ingenierie
Alfred Demaison - Ingenierie

--------------------------------------------

GID Patron = 10000
GID Recherche = 11000
GID Developpement = 12000
GID Ingenierie = 13000
'
#--------------------------------------------

groupadd -g 10000 Patron
groupadd -g 11000 Recherche
groupadd -g 12000 Developpement
groupadd -g 13000 Ingenierie

useradd -mc "Bill Porte" -g 10000 -G 11000,12000,13000 BPo

useradd -mc "Robert Duval" -g 11000 RDu
useradd -mc "Nadine Dulks" -g 12000 NDu
useradd -mc "Herman Stamper" -g 13000 HSt

useradd -mc "Sam Francois" -g 11000 SFr
useradd -mc "Albert Chamfort" -g 11000 ACh
useradd -mc "Jeanne Latour" -g 11000 JLa
useradd -mc "Sonia Andersen" -g 11000 SAn

useradd -mc "Linus Turalds" -g 12000 LTu
useradd -mc "Ken Thompson" -g 12000 KTh
useradd -mc "Jacques Demaitre" -g 12000 JDe

useradd -mc "Rose Martin" -g 12000 RMa
useradd -mc "Alfred Demaison" -g 12000 ADe

#============================================

passwd BPo BPo

passwd RDu RDu
passwd NDu NDu
passwd HSt HSt

passwd SFr SFr
passwd ACh ACh
passwd JLa JLa
passwd SAn SAn
passwd LTu LTu
passwd KTh KTh
passwd JDe JDe
passwd RMa RMa
passwd ADe ADe

#============================================

mkdir -m 1744 /home/BPo/Public

mkdir -m 1744 /home/RDu/Public
mkdir -m 1744 /home/NDu/Public
mkdir -m 1744 /home/HSt/Public

mkdir -m 1744 /home/SFr/Public
mkdir -m 1744 /home/ACh/Public
mkdir -m 1744 /home/JLa/Public
mkdir -m 1744 /home/SAn/Public
mkdir -m 1744 /home/LTu/Public
mkdir -m 1744 /home/KTh/Public
mkdir -m 1744 /home/JDe/Public
mkdir -m 1744 /home/RMa/Public
mkdir -m 1744 /home/ADe/Public

#--------------------------------------------

mkdir -m 700 /home/RDu/Admin
mkdir -m 700 /home/NDu/Admin
mkdir -m 700 /home/HSt/Admin 

#--------------------------------------------

mkdir -m 750 /home/Recherche
mkdir -m 750 /home/Developpement
mkdir -m 750 /home/Ingenierie

chgrp Recherche Recherche/
chgrp Developpement Developpement/
chgrp Ingenierie Ingenierie/
