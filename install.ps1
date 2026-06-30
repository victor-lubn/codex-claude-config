$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$targetRules = Join-Path $env:USERPROFILE '.codex\rules'
$sourceRules = Join-Path $repoRoot 'rules'

New-Item -ItemType Directory -Force -Path $targetRules | Out-Null
Copy-Item -Path (Join-Path $sourceRules '*.rules') -Destination $targetRules -Force

Write-Host "Installed Codex rules to $targetRules"
