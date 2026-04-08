param(
  [ValidateSet("build", "serve", "clean")]
  [string]$Task = "build",
  [int]$Port = 1313,
  [switch]$Drafts,
  [switch]$Future,
  [switch]$Expired
)

$ErrorActionPreference = "Stop"

function Get-HugoExecutable {
  $cmd = Get-Command hugo -ErrorAction SilentlyContinue
  if ($cmd) {
    return $cmd.Source
  }

  $local = Join-Path $PSScriptRoot ".tools/hugo/hugo.exe"
  if (Test-Path $local) {
    return $local
  }

  throw "Hugo not found. Install Hugo or place local binary at .tools/hugo/hugo.exe"
}

$hugo = Get-HugoExecutable
$args = @()

if ($Drafts) { $args += "--buildDrafts" }
if ($Future) { $args += "--buildFuture" }
if ($Expired) { $args += "--buildExpired" }

switch ($Task) {
  "clean" {
    & $hugo "--gc" "--cleanDestinationDir"
    break
  }
  "serve" {
    $serveArgs = @("server", "--disableFastRender", "--port", "$Port") + $args
    & $hugo @serveArgs
    break
  }
  default {
    $buildArgs = @("build", "--gc") + $args
    & $hugo @buildArgs
    break
  }
}
