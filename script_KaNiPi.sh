#!/bin/bash

##########################
# //////// GROUPS ////////
##########################
groupadd -g 10000 PDG
groupadd -g 11000 Recherche
groupadd -g 12000 Developpement
groupadd -g 13000 Ingenierie
groupadd -g 16666 Directeurs

#########################
# //////// USERS ////////
#########################
useradd -mc "Bill Porte" -u 10000 -g 10000 -G 11000,12000,13000,16666 BPo

useradd -mc "Robert Duval" -u 11000 -g 11000 -G 16666 RDu
useradd -mc "Sam Francois" -u 11001 -g 11000 SFr
useradd -mc "Albert Chamfort" -u 11002 -g 11000 ACh
useradd -mc "Jeanne Latour" -u 11003 -g 11000 JLa
useradd -mc "Sonia Andersen" -u 11004 -g 11000 SAn

useradd -mc "Nadine Dulks" -u 12000 -g 12000 -G 16666 NDu
useradd -mc "Linus Turalds" -u 12001 -g 12000 LTu
useradd -mc "Ken Thompson" -u 12002 -g 12000 KTh
useradd -mc "Jacques Demaitre" -u 12003 -g 12000 JDe

useradd -mc "Herman Stamper" -u 13000 -g 13000 -G 16666 HSt
useradd -mc "Rose Martin" -u 13001 -g 13000 RMa
useradd -mc "Alfred Demaison" -u 13002 -g 13000 ADe

echo "billmdp" | sudo passwd --stdin BPo
echo "robertmdp" | sudo passwd --stdin RDu
echo "sammdp" | sudo passwd --stdin SFr
echo "albertmdp" | sudo passwd --stdin ACh
echo "jeannemdp" | sudo passwd --stdin JLa
echo "soniamdp" | sudo passwd --stdin SAn
echo "nadinemdp" | sudo passwd --stdin NDu
echo "linusmdp" | sudo passwd --stdin LTu
echo "kenmdp" | sudo passwd --stdin KTh
echo "jacquesmdp" | sudo passwd --stdin JDe
echo "hermanmdp" | sudo passwd --stdin HSt
echo "rosemdp" | sudo passwd --stdin RMa
echo "alfredmdp" | sudo passwd --stdin ADe

###############################
# //////// DIRECTORIES ////////
###############################
chmod -R 0755 /home 

##########################
# Repertoires == Recherche
##########################
sudo -u BPo mkdir -m 1755 /home/BPo/public
sudo -u RDu mkdir -m 1755 /home/RDu/public
sudo -u SFr mkdir -m 1755 /home/SFr/public
sudo -u ACh mkdir -m 1755 /home/ACh/public
sudo -u JLa mkdir -m 1755 /home/JLa/public
sudo -u SAn mkdir -m 1755 /home/SAn/public

sudo -u RDu mkdir -m 1770 /home/RDu/group_dir
sudo -u SFr mkdir -m 1770 /home/SFr/group_dir
sudo -u ACh mkdir -m 1770 /home/ACh/group_dir
sudo -u JLa mkdir -m 1770 /home/JLa/group_dir
sudo -u SAn mkdir -m 1770 /home/SAn/group_dir

sudo -u RDu mkdir -m 1770 /home/RDu/admin && chgrp 16666 /home/RDu/admin

##############################
# Repertoires == Developpement
##############################
sudo -u NDu mkdir -m 1755 /home/NDu/public
sudo -u LTu mkdir -m 1755 /home/LTu/public
sudo -u KTh mkdir -m 1755 /home/KTh/public
sudo -u JDe mkdir -m 1755 /home/JDe/public

sudo -u NDu mkdir -m 1770 /home/NDu/group_dir
sudo -u LTu mkdir -m 1770 /home/LTu/group_dir
sudo -u KTh mkdir -m 1770 /home/KTh/group_dir
sudo -u JDe mkdir -m 1770 /home/JDe/group_dir

sudo -u NDu mkdir -m 1770 /home/NDu/admin && chgrp 16666 /home/NDu/admin

###########################
# Repertoires == Ingenierie
###########################
sudo -u HSt mkdir -m 1755 /home/HSt/public
sudo -u RMa mkdir -m 1755 /home/RMa/public
sudo -u ADe mkdir -m 1755 /home/ADe/public

sudo -u HSt mkdir -m 1770 /home/HSt/group_dir
sudo -u RMa mkdir -m 1770 /home/RMa/group_dir
sudo -u ADe mkdir -m 1770 /home/ADe/group_dir

sudo -u HSt mkdir -m 1770 /home/HSt/admin && chgrp 16666 /home/HSt/admin

mkdir -m 1770 /home/Recherche && chgrp 11000 /home/Recherche
mkdir -m 1770 /home/Developpement && chgrp 12000 /home/Developpement
mkdir -m 1770 /home/Ingenierie && chgrp 13000 /home/Ingenierie