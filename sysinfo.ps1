
    function getIP{
        (get-netipaddress).ipv4address | select-string "192*"
    
    }
    function Vers{
        (Get-Host).Version
    }
    function Date{
        (Get-Date)
    }
    $Date = Date
    $Vers = Vers
    $IP = getIP
    $BODY = "This machine's IP is $IP. The current user is $env:USERNAME. Hostname is $env:ComputerName. The version of powershell this machine has is $Vers. Todays date is $Date."

   Send-MailMessage -From 'olley29corey@gmail.com' -To 'olleyca@mail.uc.edu' -Subject 'IT3038 System Information' -Body $BODY -SmtpServer smtp.gmail.com -port 587 -UseSsl -Credential (Get-Credential)
cmdlet Get-Credential