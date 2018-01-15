a:9:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:205:"Das folgende PowerShell Skript liest die DLL vom WINSCP ein und lädt alles aus dem Verzeichnis /Test/ herunter in das Verzeichnis C:\temp\Test\.
Die DLL kann von folgender Webseite heruntergeladen werden ";}i:2;i:1;}i:3;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:50:"http://winscp.net/download/winscp577automation.zip";i:1;N;}i:2;i:206;}i:4;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:256;}i:5;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:256;}i:6;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:1204:"
  try
{
  Add-Type -Path "$PSScriptRoot\WinSCPnet.dll" 
    # Setup session options
    $sessionOptions = New-Object WinSCP.SessionOptions -Property @{
        Protocol = [WinSCP.Protocol]::ftp
        HostName = 'ftp.t4m.de'
        UserName = 'swm_transfer@192.168.3.17'
        Password = '6#MkzDMefAu'
    #    SshHostKeyFingerprint = "ssh-rsa 2048 xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx"
    } 
    $session = New-Object WinSCP.Session
    try
    {
        # Connect
        $session.Open($sessionOptions) 
        # Download files
        $transferOptions = New-Object WinSCP.TransferOptions
        $transferOptions.TransferMode = [WinSCP.TransferMode]::Binary
        $transferResult = $session.GetFiles('/Test/*', 'C:\temp\Test\*', $False, $transferOptions)
        # Throw on any error
        $transferResult.Check()
        # Print results
        foreach ($transfer in $transferResult.Transfers)
        {
            Write-Host ("Download of {0} succeeded" -f $transfer.FileName)
        }
    }
    finally
    {
        # Disconnect, clean up
        $session.Dispose()
    } 
    exit 0
}
catch [Exception]
{
    Write-Host ("Error: {0}" -f $_.Exception.Message)
    exit 1
}
";}i:2;i:3;i:3;s:1216:" powershell>
  try
{
  Add-Type -Path "$PSScriptRoot\WinSCPnet.dll" 
    # Setup session options
    $sessionOptions = New-Object WinSCP.SessionOptions -Property @{
        Protocol = [WinSCP.Protocol]::ftp
        HostName = 'ftp.t4m.de'
        UserName = 'swm_transfer@192.168.3.17'
        Password = '6#MkzDMefAu'
    #    SshHostKeyFingerprint = "ssh-rsa 2048 xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx"
    } 
    $session = New-Object WinSCP.Session
    try
    {
        # Connect
        $session.Open($sessionOptions) 
        # Download files
        $transferOptions = New-Object WinSCP.TransferOptions
        $transferOptions.TransferMode = [WinSCP.TransferMode]::Binary
        $transferResult = $session.GetFiles('/Test/*', 'C:\temp\Test\*', $False, $transferOptions)
        # Throw on any error
        $transferResult.Check()
        # Print results
        foreach ($transfer in $transferResult.Transfers)
        {
            Write-Host ("Download of {0} succeeded" -f $transfer.FileName)
        }
    }
    finally
    {
        # Disconnect, clean up
        $session.Dispose()
    } 
    exit 0
}
catch [Exception]
{
    Write-Host ("Error: {0}" -f $_.Exception.Message)
    exit 1
}
";}i:2;i:265;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1488;}i:8;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1488;}}