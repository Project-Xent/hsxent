$ErrorActionPreference = "Stop"
Push-Location $PSScriptRoot
try {
    $dist = if ($env:XENT_DIST) { $env:XENT_DIST } else { "..\fluxent\build\dist" }
    $version = (Select-String -Path hsxent.cabal -Pattern '^version:\s*(\S+)').Matches[0].Groups[1].Value
    if (Test-Path include) { Remove-Item -Recurse -Force include }
    try {
        Copy-Item -Recurse "$dist\xent-$version-x86_64-windows-gnu\include" include
        cabal sdist
        if ($LASTEXITCODE) { exit $LASTEXITCODE }
    } finally {
        if (Test-Path include) { Remove-Item -Recurse -Force include }
    }
} finally {
    Pop-Location
}
