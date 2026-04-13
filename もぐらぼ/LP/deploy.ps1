# もぐラボ LP を Netlify 本番にデプロイ（静的サイト）
# 初回のみ: npx netlify login でログインし、サイトをリンク（netlify link）してください。
# 必要: Node.js（npx が使えること）
$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
Set-Location $root

if (-not (Get-Command npx -ErrorAction SilentlyContinue)) {
  Write-Error "Node.js（npx）が見つかりません。https://nodejs.org/ から LTS を入れてから再実行してください。"
}

Write-Host ">>> Netlify 本番デプロイ: $root" -ForegroundColor Cyan
npx --yes netlify-cli deploy --prod --dir="$root"
Write-Host ">>> 完了" -ForegroundColor Green
