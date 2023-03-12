#!/bin/bash

echo "criando diretorios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo  "criando grupos"

groupadd  GRP_ADM
groupadd  GRP_VEN
groupadd  GRP_SEC

echo "Criando usuarios"

useradd  carlos -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd  maria -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM 
useradd  joao -m -s /bin/bash -p $(openssl passwd senha123) -G  GRP_ADM

useradd  debora -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd  sebastiana -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd  roberto -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd  josefina -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd  amanda -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd  rogerio -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

echo "Permissões dor diretóro"

chown root:GRP_ADM /adm
chown root:GRP_ADM /ven
chown root:GRP_ADM /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo  "Fim" 


