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
useradd -mc "Alfred Demaison" -u 13001 -g 13000 ADe

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

mkdir -m 1744 /home/BPo/public
##########################
# Repertoires == Recherche
##########################
mkdir -m 1744 /home/RDu/public
mkdir -m 0760 /home/RDu/group_dir
mkdir -m 0700 /home/RDu/admin

mkdir -m 1744 /home/SFr/public
mkdir -m 0760 /home/SFr/group_dir
mkdir -m 1744 /home/ACh/public
mkdir -m 0760 /home/ACh/group_dir
mkdir -m 1744 /home/JLa/public
mkdir -m 0760 /home/JLa/group_dir
mkdir -m 1744 /home/SAn/public
mkdir -m 0760 /home/SAn/group_dir
##############################
# Repertoires == Developpement
##############################
mkdir -m 1744 /home/NDu/public
mkdir -m 0760 /home/NDu/group_dir
mkdir -m 0700 /home/NDu/admin

mkdir -m 1744 /home/LTu/public
mkdir -m 0760 /home/LTu/group_dir
mkdir -m 1744 /home/KTh/public
mkdir -m 0760 /home/KTh/group_dir
mkdir -m 1744 /home/JDe/public
mkdir -m 0760 /home/JDe/group_dir
###########################
# Repertoires == Ingenierie
###########################
mkdir -m 1744 /home/HSt/public
mkdir -m 0760 /home/HSt/group_dir
mkdir -m 0700 /home/HSt/admin

mkdir -m 1744 /home/RMa/public
mkdir -m 0760 /home/RMa/group_dir
mkdir -m 1744 /home/ADe/public
mkdir -m 0760 /home/ADe/group_dir

sudo mkdir -m 750 /home/Recherche && sudo chgrp 11000 /home/Recherche
sudo mkdir -m 750 /home/Developpement && sudo chgrp 12000 /home/Developpement
sudo mkdir -m 750 /home/Ingenierie && sudo chgrp 13000 /home/Ingenierie
clear
