#!/bin/bash

##########################
##########################
# //////// GROUPS ////////
##########################
##########################

groupadd -g 10000 Directeur
groupadd -g 11000 Recherche
groupadd -g 12000 Developpement
groupadd -g 13000 Ingenierie

#########################
#########################
# //////// USERS ////////
#########################
#########################

useradd -mc "Bill Porte" -u 10000 -g 10000 -G 11000,12000,13000 BPo
#############################
# Utilisateurs == [Recherche] 
#############################
useradd -mc "Robert Duval" -u 11000 -g 11000 RDu
useradd -mc "Sam Francois" -u 11001 -g 11000 SFr
useradd -mc "Albert Chamfort" -u 11002 -g 11000 ACh
useradd -mc "Jeanne Latour" -u 11003 -g 11000 JLa
useradd -mc "Sonia Andersen" -u 11004 -g 11000 SAn
#################################
# Utilisateurs == [Developpement]
#################################
useradd -mc "Nadine Dulks" -u 12000 -g 12000 NDu
useradd -mc "Linus Turalds" -u 12001 -g 12000 LTu
useradd -mc "Ken Thompson" -u 12002 -g 12000 KTh
useradd -mc "Jacques Demaitre" -u 12003 -g 12000 JDe
##############################
# Utilisateurs == [Ingenierie]
##############################
useradd -mc "Herman Stamper" -u 13000 -g 13000 HSt
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
###############################
# //////// DIRECTORIES ////////
###############################
###############################
chmod -R 0755 /home 

sudo -u BPo mkdir -m 1744 /home/BPo/public
##########################
# Repertoires == Recherche
##########################
sudo -u RDu mkdir -m 1744 /home/RDu/public
sudo -u RDu mkdir -m 0760 /home/RDu/group_dir
sudo -u RDu mkdir -m 0700 /home/RDu/admin

sudo -u SFr mkdir -m 1744 /home/SFr/public
sudo -u SFr mkdir -m 0760 /home/SFr/group_dir

sudo -u ACh mkdir -m 1744 /home/ACh/public
sudo -u ACh mkdir -m 0760 /home/ACh/group_dir

sudo -u JLa mkdir -m 1744 /home/JLa/public
sudo -u JLa mkdir -m 0760 /home/JLa/group_dir

sudo -u SAn mkdir -m 1744 /home/SAn/public
sudo -u SAn mkdir -m 0760 /home/SAn/group_dir
##############################
# Repertoires == Developpement
##############################
sudo -u NDu mkdir -m 1744 /home/NDu/public
sudo -u NDu mkdir -m 0760 /home/NDu/group_dir
sudo -u NDu mkdir -m 0700 /home/NDu/admin

sudo -u LTu mkdir -m 1744 /home/LTu/public
sudo -u LTu mkdir -m 0760 /home/LTu/group_dir

sudo -u KTh mkdir -m 1744 /home/KTh/public
sudo -u KTh mkdir -m 0760 /home/KTh/group_dir

sudo -u JDe mkdir -m 1744 /home/JDe/public
sudo -u JDe mkdir -m 0760 /home/JDe/group_dir
###########################
# Repertoires == Ingenierie
###########################
sudo -u HSt mkdir -m 1744 /home/HSt/public
sudo -u HSt mkdir -m 0760 /home/HSt/group_dir
sudo -u HSt mkdir -m 0700 /home/HSt/admin

sudo -u RMa mkdir -m 1744 /home/RMa/public
sudo -u RMa mkdir -m 0760 /home/RMa/group_dir

sudo -u ADe mkdir -m 1744 /home/ADe/public
sudo -u ADe mkdir -m 0760 /home/ADe/group_dir

mkdir -m 760 /home/Recherche && chgrp 11000 /home/Recherche
mkdir -m 760 /home/Developpement && chgrp 12000 /home/Developpement
mkdir -m 760 /home/Ingenierie && chgrp 13000 /home/Ingenierie
