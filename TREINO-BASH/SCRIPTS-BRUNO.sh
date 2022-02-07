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