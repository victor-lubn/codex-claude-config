$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$targetRules = Join-Path $env:USERPROFILE '.codex\rules'
$sourceRules = Join-Path $repoRoot 'rules'
$targetClaude = Join-Path $env:USERPROFILE '.claude'
$sourceClaude = Join-Path $repoRoot 'claude\CLAUDE.md'

New-Item -ItemType Directory -Force -Path $targetRules | Out-Null
Copy-Item -Path (Join-Path $sourceRules '*.rules') -Destination $targetRules -Force

if (Test-Path $sourceClaude) {
    New-Item -ItemType Directory -Force -Path $targetClaude | Out-Null
    Copy-Item -Path $sourceClaude -Destination (Join-Path $targetClaude 'CLAUDE.md') -Force
}

Write-Host "Installed Codex rules to $targetRules"
Write-Host "Installed Claude instructions to $targetClaude"
