$json = Read-Host "Paste your json string"

$fileName = "format"

$path = "C:\"

$ext = ".json"

$date = Get-Date -Format "yyyyMMddTHHmmss"

$jsonFile = New-Item ($path + $fileName + $date + $ext) -Type File

$json | ConvertFrom-Json | ConvertTo-Json | Out-File $jsonFile

$notepadplus = "C:\Program Files\Notepad++\notepad++.exe"

if ( -Not (Test-Path -Path $notepadplus -PathType Leaf)) {

    Start-Process notepad $jsonFile

}

else {

    Start-Process notepad++ $jsonFile

}

Invoke-Item $path