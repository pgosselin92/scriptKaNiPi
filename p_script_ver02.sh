#!/bin/bash
echo ///////////////////////
echo / Starting script... /
echo /////////////////////
##########################
##########################
# //////// GROUPS ////////
##########################
##########################

groupadd -g 3000 Directeur
groupadd -g 3010 Recherche
groupadd -g 3020 Developpement
groupadd -g 3030 Ingenierie

#########################
#########################
# //////// USERS ////////
#########################
#########################

useradd -c "Bill Laporte" -u 3000 -g 3000 -G 3010,3020,3030 Bla
#############################
# Utilisateurs == [Recherche] 
#############################
useradd -c "Robert Duval" -u 3010 -g 3010 Rdu
useradd -c "Sam Francois" -u 3011 -g 3010 Sfr
useradd -c "Albert Chambort" -u 3012 -g 3010 Ach
useradd -c "Jeanne Latour" -u 3013 -g 3010 Jla
useradd -c "Sonia Andersen" -u 3014 -g 3010 San
#################################
# Utilisateurs == [Développement]
#################################
useradd -c "Nadine Dulks" -u 3020 -g 3020 Ndu
useradd -c "Linus Turalds" -u 3021 -g 3020 Ltu
useradd -c "Ken Thompson" -u 3022 -g 3020 Kth
useradd -c "Jacques Demaitre" -u 3023 -g 3020 Jde
##############################
# Utilisateurs == [Ingénierie]
##############################
useradd -c "Herman Stamper" -u 3030 -g 3030 Hst
useradd -c "Rose Martin" -u 3031 -g 3030 Rma
useradd -c "Alfred Demaison" -u 3032 -g 3030 Ade 

echo "billmdp" | sudo passwd --stdin Bla
echo "robertmdp" | sudo passwd --stdin Rdu
echo "sammdp" | sudo passwd --stdin Sfr
echo "albertmdp" | sudo passwd --stdin Ach
echo "jeannemdp" | sudo passwd --stdin Jla
echo "soniamdp" | sudo passwd --stdin San
echo "nadinemdp" | sudo passwd --stdin Ndu
echo "linusmdp" | sudo passwd --stdin Ltu
echo "kenmdp" | sudo passwd --stdin Kth
echo "jacquesmdp" | sudo passwd --stdin Jde
echo "hermanmdp" | sudo passwd --stdin Hst
echo "rosemdp" | sudo passwd --stdin Rma
echo "alfredmdp" | sudo passwd --stdin Ade

###############################
###############################
# //////// DIRECTORIES ////////
###############################
###############################

mkdir -m 1744 /home/Bla/public
##########################
# Répertoires == Recherche
##########################
mkdir -m 1744 /home/Rdu/public
mkdir -m 0760 /home/Rdu/group_dir
mkdir -m 0700 /home/Rdu/admin
mkdir -m 1744 /home/Sfr/public
mkdir -m 0760 /home/Sfr/group_dir
mkdir -m 1744 /home/Ach/public
mkdir -m 0760 /home/Ach/group_dir
mkdir -m 1744 /home/Jla/public
mkdir -m 0760 /home/Jla/group_dir
mkdir -m 1744 /home/San/public
mkdir -m 0760 /home/San/group_dir
##############################
# Répertoires == Développement
##############################
mkdir -m 1744 /home/Ndu/public
mkdir -m 0760 /home/Ndu/group_dir
mkdir -m 0700 /home/Ndu/admin
mkdir -m 1744 /home/Ltu/public
mkdir -m 0760 /home/Ltu/group_dir
mkdir -m 1744 /home/Kth/public
mkdir -m 0760 /home/Kth/group_dir
mkdir -m 1744 /home/Jde/public
mkdir -m 0760 /home/Jde/group_dir
###########################
# Répertoires == Ingénierie
###########################
mkdir -m 1744 /home/Hst/public
mkdir -m 0760 /home/Hst/group_dir
mkdir -m 0700 /home/Hst/admin
mkdir -m 1744 /home/Rma/public
mkdir -m 0760 /home/Rma/group_dir
mkdir -m 1744 /home/Ade/public
mkdir -m 0760 /home/Ade/group_dir

clear