Invoke-Expression (&starship init powershell)

Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell | Out-String)
})

$Env:SHELL = 'C:\Program Files\PowerShell\7\pwsh.exe'

set-psreadlinekeyhandler -Key Tab -Function MenuComplete

set-alias vim 'C:\Program Files\Neovim\bin\nvim.exe'
set-alias lg lazygit

