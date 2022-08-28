#!/bin/bash

echo "Excluindo diretórios e arquivos"

rm -Rfv /

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Permissões de propriedade e acesso..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Criando usuários..."

#Usuários ADM
useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "João Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

#Usuários VEN
useradd debora -c "Debora Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Roberto Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

#Usuários SEC
useradd josefina -c "Josefina Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


echo "Fim do script..."
