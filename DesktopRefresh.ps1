$shell = New-Object -ComObject Shell.Application

$shell.minimizeall()

start-sleep 1

$wsh = New-Object -ComObject Wscript.Shell

$wsh.sendkeys('{F5}')

start-sleep 1

$shell.undominimizeall()

exit