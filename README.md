# Projeto Infraestrutura Como Código(IAS) Linux
Meu primeiro projeto de infraestrutura como código utilizando Linux

DIRETÓRIOS
/publico	/adm	/ven	/sec

GRUPOS
GRP_ADM		GRP_VEN		GRP_SEC

USUÁRIOS
carlos		debora		josefina
maria		sebastiana	amanda
joao		roberto		rogerio

carlos, maria, joao - adm
debora, sebastiana, roberto - ven
josefina, amanda, rogerio - sec

TASKS
- Excluir diretórios, arquivos, grupos e usuários criados anteriormente;
- Todo provisionamento deve ser feito em um arquivo do tipo Bash Script;
- O dono de todos os diretórios criados será o usuário root;
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
- Os usuários não poderão ter permissão de leitura, escrita e execução em seus diretórios de departamentos que eles não pertencem;
- Subir arquivo de script criado para a sua conta no Github.

# Comandos utilizados

> Verificar diretórios:

ls -l

> Verificar usuários:

cat /etc/passwd

> Verificar grupos:

cat /etc/group

> Excluir diretório:

rm -Rf /adm

> Excluir usuário:

userdel -r nomedousuario

> Excluir grupo:

groupdel nomedogrupo

> Criar script:

nano nomedoscript.sh

> Exemplo de texto de script:

#!/bin/bash

echo "Criando diretórios..."

mkdir /publico

mkdir /adm

> Tornar executavel o script:

chmod +x iacl.sh

> Executar o script:

./iacl.sh
