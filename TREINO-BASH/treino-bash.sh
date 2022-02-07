#!/bin/bash


#Este é um comentário

### VARIAVEL
site=www.bruno.com
echo "O site é: $site"

### COMANDO EM VARIAVEL
system_info=`df -h` # Também poderia ser system_info=$(df -h)
echo "$system_info"

### COMANDOS
echo "Seu nome de usuário é:"
whoami
echo "Info de hora atual e tempo que o computador está ligado:"
uptime
echo "O script está executando do diretório:"
pwd
data=$(date +"%T, %d/%m/%y, %A")
echo "Pegando a data do sistema: $data"

### EXEMPLO CAPTURA DE INPUT
echo "Qual o nome de uma de suas músicas favoritas?"
read nome_musica;
echo "Você gosta de ouvir $nome_musica!"

### FIM v1

### EXEMPLOS DE TOMADA DE DECISAO OU SELECAO, EXEMPLO DE OPERADORES

### EXEMPLO CAPTURA DE INPUT
echo "Qual o nome de uma de suas músicas favoritas?"
read nome_musica;
echo "Você gosta de ouvir $nome_musica!"

### EXEMPLO DE SELECAO OU TOMADA DE DECISAO - IF
echo "Digite um número qualquer:"
read numero;
if [ $numero -gt 20 ];
then
  echo "Este número é maior que 20!"
fi

if [ 1 -eq 1 ]; #igual
then
  echo "1 eq 1 = true"
fi

if [ 2 -ne 1 ]; #diferente
then
  echo "2 ne 1 = true"
fi

if [ 2 -gt 1 ]; #maior
then
  echo "2 gt 1 = true"
fi

if [ 2 -lt 3 ]; #menor
then
  echo "2 lt 3 = true"
fi

if [ 2 -ge 2 ]; #maior ou igual
then
  echo "2 ge 2 = true"
fi

if [ 1 -le 1 ]; #menor ou igual
then
  echo "1 le 1 = true"
fi

if [ "OI" = "OI" ]; #string igual
then
  echo "OI = OI = true"
fi

if [ "OI" != "OLA" ]; #string diferente
then
  echo "OI != OLA = true"
fi

if [ -n "OI" ]; #comprimento da string diferente de 0
then
  echo "n OI = true"
fi

if [ -z "" ]; #comprimento da string igual 0
then
  echo "z '' = true"
fi

if [ -e "/var/log/lastlog" ]; #verifica se arquivo existe
then
  echo "e /var/log/lastlog = true"
fi

if [ -d "/var/log" ]; #verifica se a pasta existe
then
  echo "d /var/log = true"
fi

if [ -f "/var/log/lastlog" ]; #verifica se é arquivo regular (documento, foto, programa, planilha)
then
  echo "f /var/log/lastlog = true"
fi

### ELSE

if [ "OI" != "OI" ]; #string diferente
then
    echo "OI != OI = true"
else
    echo "OI != OI = false"
fi

### ELIF PARA MAIS CONDICOES A SEREM TESTADAS
echo "digite 1:hora, 2 ou 3."
read num_dig; 
if [ $num_dig = 1 ];
then
    data=$(date +"%T, %d/%m/%y, %A")
    echo "$data"
elif [ $num_dig = 2 ];
then
    echo "two"
elif [ $num_dig = 3 ];
then
    echo "three"
fi

### COMANDO CASE
read num_dig;
case $num_dig in 
    1)
    echo "1"
    ;;
    2)
    echo "2"
    ;;
esac

