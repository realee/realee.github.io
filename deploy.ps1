# deploy.ps1 (UTF-8 with BOM)
$Root = "D:\projects\personal\github\realee.github.io"
Set-Location $Root

Write-Host "🚀 Deploying realee.github.io..." -ForegroundColor Green

git add .

$Time = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$CommitMsg = "deploy: auto-deploy $Time"
git commit -m "$CommitMsg" -a

if ($LASTEXITCODE -ne 0) {
    Write-Host "✅ No changes to commit" -ForegroundColor Yellow
} else {
    Write-Host "✅ Committed: $CommitMsg"
}

git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "🎉 Deployment successful! Visit https://realee.github.io" -ForegroundColor Green
} else {
    Write-Host "❌ Deployment failed" -ForegroundColor Red
}

