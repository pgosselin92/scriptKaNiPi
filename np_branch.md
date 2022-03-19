echo =====================
echo ..Creating Groups..
echo =====================
groupadd -g 2000 Patron
groupadd -g 2010 Ingenierie
groupadd -g 2020 Recherche
groupadd -g 2030 Developpement

echo ======================
echo ..Creating Users..
echo ======================

useradd -c "Bill Porte" -u 2000 -g 2000 -G 2010,2020,2030 BPo

useradd -c "Herman Stamper" -u 2010 -g 2010 HSt
useradd -c "Rose Martin" -u 2011 -g 2010 RMa
useradd -c "Alfred Demaison" -u 2012 -g 2010 ADe

useradd -c "Robert Duval" -u 2020 -g 2020 RDu
useradd -c "Sam Francois" -u 2021 -g 2020 SFr
useradd -c "Albert Chamfort" -u 2022 -g 2020 ACh
useradd -c "Jeanne Latour" -u 2023 -g 2020 JLa
useradd -c "Sonia Andersen" -u 2024 -g 2020 SAn

useradd -c "Nadine Dulks" -u 2030 -g 2030 NDu
useradd -c "Linus Turalds" -u 2031 -g 2030 LTu
useradd -c "Ken Thompson" -u 2032 -g 2030 KTh
useradd -c "Jacques Demaitre" -u 2033 -g 2030 JDe

echo =====================
echo ..Creating Passwords..
echo =====================

echo "billmdp" | sudo passwd --stdin BLa
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

echo =====================
echo ..Creating Directories..
echo =====================

mkdir -m 1744 /home/BPo/public

mkdir -m 1744 /home/HSt/public
mkdir -m 0760 /home/HSt/group_dir
mkdir -m 0700 /home/HSt/admin
mkdir -m 1744 /home/RMa/public
mkdir -m 0760 /home/RMa/group_dir
mkdir -m 1744 /home/ADe/public
mkdir -m 0760 /home/ADe/group_dir

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

mkdir -m 1744 /home/NDu/public
mkdir -m 0760 /home/NDu/group_dir
mkdir -m 0700 /home/NDu/admin
mkdir -m 1744 /home/LTu/public
mkdir -m 0760 /home/LTu/group_dir
mkdir -m 1744 /home/KTh/public
mkdir -m 0760 /home/KTh/group_dir
mkdir -m 1744 /home/JDe/public
mkdir -m 0760 /home/JDe/group_dir
