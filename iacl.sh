#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários... "

useradd carlos -c "Carlos Bandeira" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd maria -c "Maria Jose" -s /bin/bash -m -p $(openssl passwd -crypt 321) -G GRP_ADM
useradd joao -c "João Maria" -s /bin/bash -m -p $(openssl passwd -crypt 456) -G GRP_ADM

useradd debora -c "Debora Duarte" -s /bin/bash -m -p $(openssl passwd -crypt 654) -G GRP_VEN
useradd sebastiana -c "Sebastiana Priscila" -s /bin/bash -m -p $(openssl passwd -crypt 789) -G GRP_VEN
useradd roberto -c "Roberto Silas" -s /bin/bash -m -p $(openssl passwd -crypt 987) -G GRP_VEN

useradd josefina -c "Josefina Marmosa" -s /bin/bash -m -p $(openssl passwd -crypt 159) -G GRP_SEC
useradd amanda -c "Amanda Sita" -s /bin/bash -m -p $(openssl passwd -crypt 951) -G GRP_SEC
useradd rogerio -c "Rogerio Silva" -s /bin/bash -m -p $(openssl passwd -crypt 357) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."