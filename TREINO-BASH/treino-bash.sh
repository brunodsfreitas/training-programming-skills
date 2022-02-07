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
if [ $numero -gt 20 ]; then
  echo "Este número é maior que 20!"
fi

if [ 1 -eq 1 ]; then #igual
  echo "1 eq 1 = true"
fi

if [ 2 -ne 1 ]; then #diferente
  echo "2 ne 1 = true"
fi

if [ 2 -gt 1 ]; then #maior
  echo "2 gt 1 = true"
fi

if [ 2 -lt 3 ]; then #menor
  echo "2 lt 3 = true"
fi

if [ 2 -ge 2 ]; then #maior ou igual
  echo "2 ge 2 = true"
fi

if [ 1 -le 1 ]; then #menor ou igual
  echo "1 le 1 = true"
fi

if [ "OI" = "OI" ]; then #string igual
  echo "OI = OI = true"
fi

if [ "OI" != "OLA" ]; then #string diferente
  echo "OI != OLA = true"
fi

if [ -n "OI" ]; then #comprimento da string diferente de 0
  echo "n OI = true"
fi

if [ -z "" ]; then #comprimento da string igual 0
  echo "z '' = true"
fi

if [ -e "/var/log/lastlog" ]; then #verifica se arquivo existe
  echo "e /var/log/lastlog = true"
fi

if [ -d "/var/log" ]; then #verifica se a pasta existe
  echo "d /var/log = true"
fi

if [ -f "/var/log/lastlog" ]; then #verifica se é arquivo regular (documento, foto, programa, planilhas
  echo "f /var/log/lastlog = true"
fi

### ELSE

if [ "OI" != "OI" ]; then #string diferente
    echo "OI != OI = true"
else
    echo "OI != OI = false"
fi

### ELIF PARA MAIS CONDICOES A SEREM TESTADAS
echo "digite 1:hora, 2 ou 3."
read num_dig; 
if [ $num_dig = 1 ]; then
    data=$(date +"%T, %d/%m/%y, %A")
    echo "$data"
elif [ $num_dig = 2 ]; then
    echo "two"
elif [ $num_dig = 3 ]; then
    echo "three"
fi

### COMANDO CASE
read num_dig;
case $num_dig in 
    1)
        echo "1" ;;
    2)
        echo "2" ;;
esac

### LOOPS

###FOR
echo "Testando FOR:"
for num in {15..0}; do ### REPETE 16 VEZES
    echo "$num"
done

echo "Testando FOR SEQ:"
for num in $(seq 0 5 100); do ### INICIA 0, CRESCE EM 5, ENCERRA EM 100
    echo "$num"
done

echo "Testando FOR SEQ sem intervalo:"
for num in $(seq 0 100); do ### INICIA 0, ENCERRA EM 100
    echo "$num"
done

###WHILE
echo "Testando While, digite um número, o 0 sai."
read num_dig;
while [ $num_dig != "0" ]; do
    echo "O Dígito $num_dig está incorreto, tente novamente."
    read num_dig;
done

echo "Contar até qual número positivo ?"
read num_dig;
i=1;
while [ $i -le $num_dig ]; do
    echo "$i"
    ((i=$i+1))
done