Remove-Item -Recurse -Force "$env:USERPROFILE\AppData\Local\nvim"

git clone https://github.com/nvim-lua/kickstart.nvim.git "$env:USERPROFILE\AppData\Local\nvim"

Get-ChildItem -Path "$PWD\nvim.plugins" | ForEach-Object {
    $targetPath = Join-Path "$env:USERPROFILE\AppData\Local\nvim\lua\custom\plugins" (Split-Path $_ -Leaf)
    cmd /c mklink /H $targetPath $_.FullName
}

New-Item -ItemType Directory -Path "$env:USERPROFILE\AppData\Local\nvim\after\plugin" -Force

$defaultsLinkPath = Join-Path "$env:USERPROFILE\AppData\Local\nvim\after\plugin" "defaults.lua"
cmd /c mklink /H $defaultsLinkPath "$PWD\nvim.defaults\defaults.lua"
