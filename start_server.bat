@echo off
title Local Portfolio Server
echo ========================================================
echo   Starting Local Web Server for Asanjitha's Portfolio
echo ========================================================
echo.
echo Opening http://localhost:8080 in your default browser...
start http://localhost:8080
echo.
echo Server running at http://localhost:8080/
echo Press Ctrl+C in this window to stop the server anytime.
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$listener = New-Object System.Net.HttpListener; ^
   $listener.Prefixes.Add('http://localhost:8080/'); ^
   $listener.Start(); ^
   $folder = $PSScriptRoot; ^
   if (-not $folder) { $folder = (Get-Location).Path }; ^
   while ($listener.IsListening) { ^
     $ctx = $listener.GetContext(); ^
     $req = $ctx.Request; ^
     $res = $ctx.Response; ^
     $path = $req.Url.LocalPath.TrimStart('/'); ^
     if ([string]::IsNullOrEmpty($path)) { $path = 'index.html' }; ^
     $file = Join-Path $folder $path; ^
     if (Test-Path $file -PathType Leaf) { ^
       $bytes = [System.IO.File]::ReadAllBytes($file); ^
       $ext = [System.IO.Path]::GetExtension($file).ToLower(); ^
       $types = @{ '.html'='text/html'; '.css'='text/css'; '.js'='application/javascript'; '.pdf'='application/pdf'; '.png'='image/png'; '.jpg'='image/jpeg'; '.svg'='image/svg+xml' }; ^
       $res.ContentType = if ($types.ContainsKey($ext)) { $types[$ext] } else { 'application/octet-stream' }; ^
       $res.ContentLength64 = $bytes.Length; ^
       $res.OutputStream.Write($bytes, 0, $bytes.Length); ^
     } else { ^
       $res.StatusCode = 404; ^
     }; ^
     $res.OutputStream.Close(); ^
   }"
