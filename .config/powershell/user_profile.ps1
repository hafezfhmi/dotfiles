# oh my posh theme engine
Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\hafezfhmi.omp.json"
oh-my-posh init pwsh --config $omp_config | Invoke-Expression

# Terminal icons
Import-Module -Name Terminal-Icons

# Z directory jumper
Import-Module z

# PSReadLine auto completion
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf fuzzy finder
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'


# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Run as administrator like sudo
# Usage: sudo 'command here'
# Example: sudo 'cmd /c mklink C:\Users\user1\README.md.copy C:\Users\user1\README.md'
function sudo {
  Start-Process -Verb RunAs powershell.exe @args
}
