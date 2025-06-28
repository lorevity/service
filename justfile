set shell := ["powershell", "-c"]

build *FILE:
    ./darklua process src/init.luau build/output.luau -c .darklua.json
    Get-Content build/output.luau | Set-Clipboard