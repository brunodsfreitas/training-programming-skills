REM DESATIVAR OUTPUT DE TEXTO DO SCRIPT
@echo off
REM DEFINICOES DE IP NO WINDOWS
REM DEFININDO VARIAVEIS
set IPADDRESS=192.168.1.10
set MASK=255.255.255.0
set GATEWAY=192.168.0.1
set DNS=192.168.0.1
set INTERFACE=Ethernet
REM EXECUTANDO ALTERACAO DO IP
REM netsh interface ip set address "Ethernet" static 10.1.200.3 255.255.0.0 10.1.1.199
echo interface ip set address "%INTERFACE%" static %IPADDRESS% %MASK% %GATEWAY%
REM EXECUTANDO ALTERACAO DO DNS
REM netsh interface ip set dnsserver "%INTERFACE%" static %DNS% validate=no
echo interface ip set dnsserver "%INTERFACE%" static %DNS% validate=no


REM rodar no CMD, nao powershell
REM rd /s /q "%appdata%\wttdstation"
REM rd /s /q "%temp%\dstemp"
REM rd /s /q "C:\ProgramData\wtt"
REM reg delete "HKEY_CURRENT_USER\Software\WTT" /f