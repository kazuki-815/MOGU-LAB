# もぐラボ LP を Netlify にデプロイ（静的サイト）
# 初回のみ: npx netlify login でログインし、このフォルダで netlify link（サイト紐付け）してください。
# 必要: Node.js（npx が使えること）
param(
  [switch]$Draft
)

$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
Set-Location $root

if (-not (Get-Command npx -ErrorAction SilentlyContinue)) {
  Write-Error "Node.js（npx）が見つかりません。https://nodejs.org/ から LTS を入れてから再実行してください。"
}

if ($Draft) {
  Write-Host ">>> Netlify ドラフト（公開用プレビュー URL が表示されます）: $root" -ForegroundColor Cyan
  npx --yes netlify-cli deploy --dir="$root"
} else {
  Write-Host ">>> Netlify 本番デプロイ: $root" -ForegroundColor Cyan
  npx --yes netlify-cli deploy --prod --dir="$root"
}
Write-Host ">>> 完了（表示された Website URL をスマホのブラウザに貼り付け）" -ForegroundColor Green
