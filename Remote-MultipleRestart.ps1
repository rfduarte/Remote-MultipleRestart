$Hosts = 'Computer1','Computer2','Computer3'
$Username = "administrator"
$Password = "password" | ConvertTo-SecureString -AsPlainText -Force
$Credentials = New-Object System.Management.Automation.PSCredential($username,$password)

ForEach-Object -InputObject $Hosts -Process {
    Invoke-Command -ComputerName $Hosts -Credential $Credentials {Restart-Computer}
}

Write-Host -ForegroundColor "Green" Done!!!
