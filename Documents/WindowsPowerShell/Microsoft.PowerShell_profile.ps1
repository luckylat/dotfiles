Invoke-Expression (&starship init powershell)

Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell | Out-String)
})

$Env:SHELL = 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe'

set-alias vim 'C:\Program Files\Neovim\bin\nvim.exe'
set-alias lg lazygit

