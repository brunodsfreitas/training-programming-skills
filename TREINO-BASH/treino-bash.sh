#!/bin/bash

#Isso é um comentário de 1 linha
:' 
    Isso é um comentário
    de várias linhas
'
### VARIAVEL
site=www.bruno.com
URL=      # DEFININDO VARIAVEL NULA
echo "O site é: $site"

### ESPACO EM BRANCO
numeros=1 3 5 7 9 # SE DECLARADO DESSA FORMA, IRA RESULTAR EM ERRO
numeros="1 3 5 7 9" # EXISTE ESSA FORMA
numeros=1\ 3\ 5\ 7\ 9 # ESSA FORMA TAMBEM FUNCIONA
echo $numeros

e=''                     
echo "e = $e"            
let "e += 1"             # OPERACAO DE INCREMENTO, MESMO SENDO NULL, RESULTA EM 1
echo "e = $e"            

### COMANDO EM VARIAVEL
system_info=`df -h` # Também poderia ser system_info=$(df -h)
echo "$system_info"

### DIFERENTE RESULTADOS
variavel="A B     C        D"
echo $variavel # ELIMINA OS ESPACOS EXTRAS
echo "$variavel" # EXIBE COM TODOS OS ESPACOS

variavel=9950
resultado=${variavel/99/01} # SUBSTITUI O VALOR 99 DA VARIAVEL PARA 01
echo $resultado

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

### TABELA DE OPERADORES DE DEFINICAO
:'
=           --INICIALIZACAO/DEFINICAO DE VARIAVEL
VAR++       --POS-INCREMENTO
VAR--       --POS-DECREMENTO
++VAR       --PRE-INCREMENTO
--VAR       --PRE-DECREMENTO
'
### TABELA DE OPERADORES ARITMETICOS
:'
+           --SOMA
-           --SUBTRACAO
*           --MULTIPLICACAO
/           --DIVISAO
**          --EXPONENCIAL
%           --MODULO
+=          --INCREMENTO 
-=          --DECREMENTO 
*=          --MULTIPLICA PELA CONSTANTE
/=          --DIVIDE PELA CONSTANTE
%=          --MODULO PELA CONSTANTE
'
### TABELA DE OPERADORES LOGICOS
:'
!           --NEGACAO
&&          --E (AND)
||          --OU (OR)
'
### TABELA DE OPERADORES DE ARQUIVOS
:' 
-e          --ARQUIVO EXISTE
-f          --ARQUIVO E UM ARQUIVO REGULAR (NAO DISPOSITIVO)
-s          --ARQUIVO NAO POSSUI TAMANHO 0
-d          --ARQUIVO E UM DIRETORIO
-b          --ARQUIVO E UM "BLOCK DEVICE"
-c          --ARQUIVO E UM "CHARACTER DEVICE"
-p          --ARQUIVO E UM PIPE
-h          --ARQUIVO E UM LINK SIMBOLICO
-L          --ARQUIVO E UM LINK SIMBOLICO
-S          --ARQUIVO E UM SOCKET
-t          --DESCRICAO DO ARQUIVO ESTA ASSOCIADO A UM DISPOSITIVO DE TERMINAL
-r          --ARQUIVO TEM PERMISSAO DE LEITURA
-w          --ARQUIVO TEM PERMISSAO DE ESCRITA
-x          --ARQUIVO TEM PERMISSAO DE EXECUCAO
-g          --SET-GROUP-ID(SGID) FLAG ESTA MARCADA NO ARQUIVO/DIRETORIO
-u          --SET-USER-ID(SUID) FLAG ESTA MARCADA NO ARQUIVO/DIRETORIO
-k          --STICKY BIT FLAG DEFINIDA
-O          --VOCE E O DONO DO ARQUIVO
-G          --GROUP-ID DO ARQUIVO E O MESMO QUE O SEU
-N          --ARQUIVO MODIFICADO DESDE SUA ULTIMA LEITURA
f1 -nt f2   --ARQUIVO F1 E MAIS RECENTE QUE O ARQUIVO F2
f1 -ot f2   --ARQUIVO F1 E MAIS ANTIGO QUE O ARQUIVO F2
f1 -ef f2   --ARQUIVO F1 E F2 POSSUEM O HARD LINK APONTADO PARA O MESMO ARQUIVO
!           --NEGA/INVERTE A OPERACAO
'
### TABELA DE OPERADORES INTEGER
:'
-eq     --IGUAL : if [ "$a" -eq "$b" ]
-ne     --DIFERENTE : if [ "$a" -ne "$b" ]
-gt     --MAIOR QUE : if [ "$a" -gt "$b" ]
-ge     --MAIOR QUE OU IGUAL : if [ "$a" -ge "$b" ]
-lt     --MENOR QUE : if [ "$a" -lt "$b" ]
-le     --MENOR QUE OU IGUAL : if [ "$a" -le "$b" ]
<       --MENOR QUE (PARENTESES DUPLOS): (("$a" < "$b"))
<=      --MENOR QUE OU IGUAL (PARENTESES DUPLOS) : (("$a" <= "$b"))
>       --MAIOR QUE (PARENTESES DUPLOS) : (("$a" > "$b"))
>=      --MAIOR QUE OU IGUAL (PARENTESES DUPLOS) : (("$a" >= "$b"))
'
### TABELA DE OPERADORES STRING
:'
=     --IGUAL : if [ "$a" = "$b" ]
==    --IGUAL : [[ $a == z* ]] FUNCIONA COMO PATTERN | [ $a == z* ] OCORRE DIVISAO DE PALAVRAS
!=    --DIFERENTE
<     --MENOR QUE : if [[ "$a" < "$b" ]] : if [ "$a" \< "$b" ]
>     --MAIOR QUE : if [[ "$a" > "$b" ]] : if [ "$a" \> "$b" ]
-z    --E NULL (0 DE LENGHT)
-n    --NAO E NULL
'
### TABELA DE OPERADORES LOGICOS
:'
-a    --E ( AND )
-o    --OU ( OR )
&&    --E ( AND ) : [[ condition1 && condition2 ]]
||    --OU ( OR ) : [[ condition1 || condition2 ]]
'
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

if [ -f "/var/log/lastlog" ]; then #verifica se é arquivo regular (documento, foto, programa, planilha)
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

variavel="carro moto trem"
for a in $variavel ; do    # DESTA FORMA, ELE QUEBRA PELOS ESPACOS EM BRANCO
    echo "$a"
done

for a in "$variavel"; do   # DESTA FORMA, ELE MANTEM TODO O TEXTO COMO 1 UNICO VALOR
    echo "$a"
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

###FUNCOES

principal() {
    echo "Escolha uma tarefa:"
    echo "1) Exibir Data."
    echo "2) Exibir Usuário."
    read opc;
    case $opc in
        "1")exibir_data ;;
        "2")exibir_usuario ;;
    esac
}

exibir_data() {
    data=$(date +"%T, %d/%m/%y, %A")
    echo "Data: $data."
}

exibir_usuario() {
    whoami
}

principal

# TAMANHO DA STRING
texto="BrunoFreitas"
echo ${#texto}

# ENCONTRAR INDEX NA STRING
texto="BrunoFreitas"
echo `expr index "$texto" F` #RETORNA A POSICAO DO F NA STRING

# RETIRAR PARTE DA STRING
texto="BrunoFreitas"
echo ${texto:0:5} #RETORNA O TEXTO DO INDEX 0 AO 5

# USANDO EXPRESSAO REGULAR
texto="BrunoFreitas2022"
echo `expr match "$texto" '\(................\)'`

### ARGUMENTOS
:' 
    $0 --> Nome do script que foi executado
    $1 ... $n --> argumentos passados por ordem
    $# --> Número da quantidade de argumentos passados
    $* --> Retorna todos argumentos de uma vez
'
if [ $# -lt 1 ]; then
echo "Precisa fornecer pelo menos 1 argumento!"
exit 1
fi
echo "Número de argumentos passados: $#"
i=0
for argumento in $* ; do
    i=$(($i+1))
    echo "Argumento $i passado: $argumento"
done

### PARAMETROS ESPECIAIS
### APLICADO EM ECHO E SAD
:'
\n  --> nova linha
\r  --> retorno
\t  --> tabulacao
\v  --> tabulacao vertical
\b  --> backspace
\a  --> alerta (beep ou flash)
'
### TABELA DE CODIGOS DE SAIDA (EXIT CODES)
:'
1       --Catchall for general errors
2       --Misuse of shell builtins (according to Bash documentation)
126     --Command invoked cannot execute
127     --"command not found"
128     --Invalid argument to exit
128+n   --Fatal error signal "n"
130     --Script terminated by Control-C
255*    --Exit status out of range
'