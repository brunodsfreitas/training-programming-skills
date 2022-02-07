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