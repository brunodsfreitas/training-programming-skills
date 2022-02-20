:: COMENTARIO PODE INICIAR COM -> REM | ::

:: COMANDO SET MOSTRA TODAS VARIÁVEIS DE SISTEMA

:: DESATIVAR OUTPUT DE TEXTO DO SCRIPT
@echo off

:: DESATIVAR OUTPUT DO COMANDO ESPECIFICO
@ver

:: DEFINICAO DE VARIAVEIS
set IPADDRESS=192.168.1.10

:: CONCATENAR VARIAVEIS (resultado seria '192.168.1.10 MASK 255.255.255.0')
set IPADDRESS=%IPADDRESS% MASK 255.255.255.0


::    ()                  - agrupamento
::    ! ~ -               - operadores unários
::    * / %               - operadores aritméticos
::    + -                 - operadores aritméticos
::    << >>               - alternância lógica
::    &                   - bit a bit E
::    ^                   - bit a bit exclusivo OU
::    |                   - bit a bit OU
::    = *= /= %= += -=    - atribuição
::      &= ^= |= <<= >>=
::    ,                   - separador de expressões

::  %PATH:~10,5%          - usaria apenas os 5 caracteres que começassem no caractere 11 (deslocamento 10) do resultado expandido
::  %PATH:~-10%           - extrairia os últimos 10 da variável PATH
::  %PATH:~0,-2%          - extrairia todos os caracteres da variável PATH, com exceção dos 2 últimos

:: VARIAVEIS DE AMBIENTE DINÂMICAS 
::  %CD% - expande para a cadeia de caracteres da pasta atual.
::  %DATE% - expande para a data atual usando o mesmo formato que o comando DATE.
::  %TIME% - expande para a hora atual usando o mesmo formato que o comando TIME.
::  %RANDOM% - expande para um número decimal aleatório entre 0 e 32767.
::  %ERRORLEVEL% - expande para o valor ERRORLEVEL atual
::  %CMDEXTVERSION% - expande para o número da versão das extensões do processador de comandos atual.
::  %CMDCMDLINE% - expande para a linha de comando original que chamou o processador de comandos.
::  %HIGHESTNUMANODENUMBER% - expande para o número de nó NUMA mais alto nesta máquina.

PAREI AULA 9 BATCH