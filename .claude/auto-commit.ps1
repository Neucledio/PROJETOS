$env:PATH = [System.Environment]::GetEnvironmentVariable("PATH", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("PATH", "User")
Set-Location "C:\PROJETOS"
git add . 2>$null
$status = git status --porcelain 2>$null
if ($status) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    git commit -m "auto: $timestamp" 2>$null
    git push origin main 2>$null
}
