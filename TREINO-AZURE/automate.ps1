
# Define o caminho do arquivo de log
$logFile = "TREINO-AZURE\automate-events.log"
$logSession = "TREINO-AZURE\automate-sessions.txt"

#Funcoes
Function _Log($msg) {
    Write-Output "$(Get-Date) | $msg" | Out-File $logFile -Append
}
Function ShowFolderContent() {
    $path = Read-Host "Enter the path of the folder:"
    Get-ChildItem -Path $path
    #az login
    az group exists --name rg-vm-instances
    az group create --name rg-vm-instances -l eastus --tags automate=test1
    az network asg create -g rg-vm-instances -n asg-Webs -l eastus --tags automate=test1
    az group delete -n rg-vm-instances --yes
}

_Log -msg "Script Iniciado."
Start-Transcript -Path $logSession -Append
Write-Host "$(Get-Date) | Inicio do Script."
Write-Host "Selecione uma opção:"
Write-Host "1. Exibir data e hora atuais"
Write-Host "2. Exibir conteúdo da pasta"
Write-Host "3. Exibir informações do sistema"

$opcao = Read-Host "Opção selecionada:"

switch($opcao) {
    2 { ShowFolderContent }
    default { Write-Host "Opção inválida"}
}

Write-Host "$(Get-Date) | Script Encerrado."
Stop-Transcript
_Log -msg "Script Encerrado."