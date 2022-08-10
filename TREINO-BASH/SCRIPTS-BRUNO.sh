#!/bin/bash

backup_rotation() {
    dateLog=`date +%Y-%m-%d_%H-%M` # DATA E FORMATO DA DATA
    logFile="/var/log/backup.log" # ARQUIVO DE LOG
    backupFolder="/usr/Backups/"
    databaseBackupFile=$backupFolder"databases-bkp/$dateLog"-DATABASE_NAME.dump.sql
    filesBackupFile=$backupFolder"files-bkp/$dateLog"-FOLDERS.tar

    echo "|INICIANDO| |BACKUP SIMPLES ARQUIVOS E BANCO| |$dateLog|" >> $logFile

    echo mysqldump -u USER_BACKUP -h HOSTNAME -pPASSWORD DATABASE_NAME > $databaseBackupFile
    echo env GZIP=-9 tar cvf $databaseBackupFile".tar" $databaseBackupFile
    echo rm -f $databaseBackupFile
    echo env GZIP=-9 tar cvf $filesBackupFile FOLDER1 FOLDER2 FOLDER3
    echo find $backupFolder -maxdepth 2 -mtime +14 -type f -exec rm -rv {} \; # REMOVE BACKUPS ANTERIORES A 14 DIAS

    dateLog=`date +%Y-%m-%d_%H-%M` # ATUALIZANDO DATA
    echo "|ENCERRANDO| |BACKUP SIMPLES ARQUIVOS E BANCO| |$dateLog|" >> $logFile
}

clean-files-and-folders-by-time() {
    logFile="/var/log/limpeza-pasta.log" # ARQUIVO DE LOG
    diretorio="/home/user/downloads/*" # DIRETORIO A SER MONITORADO PARA LIMPEZA
    quantidadeDiasAnteriores="+60" # QUANTIDADE DE DIAS QUE DEVERÁ MANTER
    dateLog=`date +%Y/%m/%d__%H:%M:%S` # DATA E FORMATO DA DATA

    echo "|INICIANDO| |LIMPEZA DOWNLOADS USER| |$dateLog|" >> $logFile

    find $diretorio -type f -ctime $quantidadeDiasAnteriores | xargs rm -f # APAGA PRIMEIRAMENTE OS ARQUIVOS
    find $diretorio -type d -ctime $quantidadeDiasAnteriores | xargs rmdir # APAGA AS PASTAS

    dateLog=`date +%Y/%m/%d__%H:%M:%S` # ATUALIZANDO DATA
    echo "|ENCERRANDO| |LIMPEZA DOWNLOADS USER| |$dateLog|" >> $logFile
}

check-root-user(){
ROOT_UID=0     # SOMENTE USUARIOS COM UID 0 POSSUEM PRIVILEGIOS ROOT
E_NOTROOT=87   # Non-root exit error.

if [ "$UID" -ne "$ROOT_UID" ] then
    echo "Must be root to run this script."
    exit $E_NOTROOT
fi
}