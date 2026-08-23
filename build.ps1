# build.ps1 - Windows native build (equivalent of build.sh)
# Usage: powershell -ExecutionPolicy Bypass -File build.ps1 [-PackageId uii.ang.bilitv]
# Requires: JAVA_HOME (JDK 17), Android SDK build-tools with aapt2, platform key in repo root

param(
    [string]$PackageId = "uii.ang.bilitv"
)

$ErrorActionPreference = "Stop"
$root = $PSScriptRoot
$mybv  = Join-Path $root "mybv"
$javaDir = Join-Path $mybv "java"
$tools = Join-Path $root "build_tools"

# --- tool paths ---
if (-not $env:JAVA_HOME) { throw "JAVA_HOME not set" }
$java   = Join-Path $env:JAVA_HOME "bin\java.exe"
$javac  = Join-Path $env:JAVA_HOME "bin\javac.exe"
if (-not (Test-Path $java)) { throw "java.exe not found: $java" }
if (-not (Test-Path $javac)) { throw "javac.exe not found: $javac" }

$sdkBuildTools = "D:\DevTools\Android\Sdk\build-tools\35.0.0"
$aapt2 = Join-Path $sdkBuildTools "aapt2.exe"
if (-not (Test-Path $aapt2)) { throw "aapt2.exe not found: $aapt2" }

$apktoolJar = Join-Path $mybv "apktool.jar"
$dxJar = Join-Path $javaDir "dx.jar"
$baksmaliJar = Join-Path $javaDir "baksmali-2.5.2.jar"
$signapkJar = Join-Path $tools "signapk.jar"

# --- helpers ---
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
function Read-Utf8($p) { return [System.IO.File]::ReadAllText($p) }
function Write-Utf8($p, $c) { [System.IO.File]::WriteAllText($p, $c, $utf8NoBom) }

$script:timings = New-Object System.Collections.ArrayList
function Step([string]$name, [scriptblock]$body) {
    Write-Host ""
    Write-Host "=========================================" -ForegroundColor Cyan
    Write-Host ">> $name" -ForegroundColor Cyan
    Write-Host "=========================================" -ForegroundColor Cyan
    $sw = [System.Diagnostics.Stopwatch]::StartNew()
    & $body
    $sw.Stop()
    $sec = [math]::Round($sw.Elapsed.TotalSeconds, 1)
    [void]$script:timings.Add([PSCustomObject]@{ Name = $name; Seconds = $sec })
    Write-Host ">> done: $name ($sec s)" -ForegroundColor Green
}

# ============================================================
# 1. Clean build dirs
# ============================================================
Step "Clean build directories" {
    foreach ($d in @((Join-Path $mybv "build"), (Join-Path $mybv "dist"))) {
        if (Test-Path $d) { Remove-Item -Recurse -Force $d }
    }
    Write-Host "  cleaned mybv/build and mybv/dist"
}

# ============================================================
# 2. Update package id
# ============================================================
Step "Update package ID to $PackageId" {
    # apktool.yml: replace renameManifestPackage line (keep original line endings)
    $ymlPath = Join-Path $mybv "apktool.yml"
    $yml = Read-Utf8 $ymlPath
    $yml = $yml -replace '(?m)^\s*renameManifestPackage:.*$', "  renameManifestPackage: $PackageId"
    Write-Utf8 $ymlPath $yml

    # AndroidManifest.xml authorities
    $maniPath = Join-Path $mybv "AndroidManifest.xml"
    $mani = Read-Utf8 $maniPath
    $mani = $mani -replace 'android:authorities="[^"]*\.provider\.', "android:authorities=`"${PackageId}.provider."
    $mani = $mani -replace 'android:authorities="[^"]*\.fileprovider', "android:authorities=`"${PackageId}.fileprovider"
    $mani = $mani -replace 'android:authorities="[^"]*\.fileProvider', "android:authorities=`"${PackageId}.fileProvider"
    Write-Utf8 $maniPath $mani

    # TvSearchSuggestionProvider references
    $pattern = '"[^"]*\.provider\.TvSearchSuggestionProvider"'
    $replacement = "`"${PackageId}.provider.TvSearchSuggestionProvider`""
    $targets = @(
        (Join-Path $mybv "smali\com\bilibili\tv\provider\TvSearchSuggestionProvider.smali"),
        (Join-Path $mybv "smali\com\bilibili\tv\provider\TvSearchSuggestionProvider`$a.smali"),
        (Join-Path $mybv "smali\com\bilibili\tv\ui\search\SearchActivity.smali"),
        (Join-Path $mybv "smali\bl\afh.smali"),
        (Join-Path $javaDir "classes\com\bilibili\tv\ui\search\SearchActivity.java")
    )
    foreach ($t in $targets) {
        if (Test-Path $t) {
            $c = Read-Utf8 $t
            $c = $c -replace $pattern, $replacement
            Write-Utf8 $t $c
        }
    }
    Write-Host "  package ID updated"
}

# ============================================================
# 3. Compile Java -> dex -> smali
# ============================================================
Step "Compile Java code (javac + dx + baksmali)" {
    Push-Location $javaDir
    try {
        # clean old .class files
        Get-ChildItem -Path "classes" -Recurse -Filter "*.class" -ErrorAction SilentlyContinue | Remove-Item -Force
        Write-Host "  removed old .class files"

        # javac: use --release 8 to align with JDK 8 API signatures (WSL build).
        # IMPORTANT: -source/-target alone would compile against JDK 17 platform APIs,
        # producing covariant signatures like ByteBuffer.position(I)Ljava/nio/ByteBuffer;
        # that do NOT exist on Android runtime (<=API 27) -> NoSuchMethodError at runtime.
        $srcs = @(Get-ChildItem -Path "classes" -Recurse -Filter "*.java")
        Write-Host "  javac compiling $($srcs.Count) java files..."
        $listFile = Join-Path $javaDir "sources_win.txt"
        $lines = $srcs | ForEach-Object { $_.FullName.Substring($javaDir.Length + 1) }
        [System.IO.File]::WriteAllLines($listFile, $lines, $utf8NoBom)
        # Force javac diagnostics (deprecation/unchecked notes) to English via JVM locale.
        # Without this they are emitted in the system locale (GBK on zh-CN Windows) and
        # show as garbled text. -J-Dfile.encoding cannot be used: PowerShell 5 splits the
        # "-J..." token, and -nowarn does NOT suppress javac "Note:" lines.
        $prevJavaToolOptions = $env:JAVA_TOOL_OPTIONS
        $env:JAVA_TOOL_OPTIONS = "-Duser.language=en -Duser.country=US"
        & $javac -Xdiags:verbose -encoding UTF-8 --release 8 -classpath "lib/*" "@$listFile"
        if ($null -eq $prevJavaToolOptions) {
            Remove-Item Env:JAVA_TOOL_OPTIONS -ErrorAction SilentlyContinue
        } else {
            $env:JAVA_TOOL_OPTIONS = $prevJavaToolOptions
        }
        if ($LASTEXITCODE -ne 0) { throw "javac failed (exit $LASTEXITCODE)" }

        # remove R classes and special files (keep in sync with build.sh)
        Get-ChildItem -Path "classes\com\bilibili\tv" -Filter "R`$*.class" -ErrorAction SilentlyContinue | Remove-Item -Force
        Remove-Item -Path "classes\com\bilibili\tv\R.class" -Force -ErrorAction SilentlyContinue
        Remove-Item -Path "classes\bl\u.class" -Force -ErrorAction SilentlyContinue

        # dx -> dex
        Write-Host "  running dx..."
        & $java -jar $dxJar --dex --output=out.dex classes
        if ($LASTEXITCODE -ne 0) { throw "dx failed (exit $LASTEXITCODE)" }

        # baksmali -> smali
        Write-Host "  running baksmali..."
        & $java -jar $baksmaliJar d out.dex -l -o ../smali
        if ($LASTEXITCODE -ne 0) { throw "baksmali failed (exit $LASTEXITCODE)" }

        # move ebook UI package to smali_classes3 (method count limit)
        $smali3 = Join-Path $javaDir "../smali_classes3"
        $ebookUi = Join-Path $javaDir "../smali/com/bilibili/tv/ebook/ui"
        if (Test-Path $smali3) {
            Remove-Item -Recurse -Force (Join-Path $smali3 "com/bilibili/tv/ebook") -ErrorAction SilentlyContinue
            if (Test-Path $ebookUi) {
                New-Item -ItemType Directory -Force -Path (Join-Path $smali3 "com/bilibili/tv/ebook") | Out-Null
                Move-Item $ebookUi (Join-Path $smali3 "com/bilibili/tv/ebook/ui")
            }
        }

        # move FlvHevcExtractor to smali_classes2 (classes.dex method count limit)
        $smali2 = Join-Path $javaDir "../smali_classes2"
        $flvExtractor = Join-Path $javaDir "../smali/tv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor.smali"
        if (Test-Path $flvExtractor) {
            $exoDest = Join-Path $smali2 "tv/danmaku/videoplayer/core/media/exo"
            New-Item -ItemType Directory -Force -Path $exoDest | Out-Null
            Move-Item $flvExtractor (Join-Path $exoDest "FlvHevcExtractor.smali") -Force
            Write-Host "  moved FlvHevcExtractor.smali to smali_classes2 (method count limit)"
        }
    } finally {
        Pop-Location
    }
    Write-Host "  java compiled to smali"
}

# ============================================================
# 4. Remove third-party libs from primary dex (they live in multidex dirs)
# ============================================================
Step "Organize MultiDex structure" {
    $removeDirs = @(
        (Join-Path $mybv "smali\okhttp3"),
        (Join-Path $mybv "smali\okio"),
        (Join-Path $mybv "smali\retrofit2"),
        (Join-Path $mybv "smali\com\google\android\exoplayer2")
    )
    foreach ($d in $removeDirs) {
        if (Test-Path $d) { Remove-Item -Recurse -Force $d; Write-Host "  removed $d" }
    }
}

# ============================================================
# 5. Build APK with apktool
# ============================================================
Step "Build APK with apktool (aapt2)" {
    $env:APKTOOL_AAPT2 = $aapt2
    $env:PATH = "$sdkBuildTools;$env:PATH"
    & $java -jar $apktoolJar b --use-aapt2 $mybv
    if ($LASTEXITCODE -ne 0) { throw "apktool build failed (exit $LASTEXITCODE)" }
    $out = Join-Path $mybv "dist\mybv.apk"
    if (-not (Test-Path $out)) { throw "apktool output not found: $out" }
    Write-Host "  APK built: $out"
}

# ============================================================
# 6. Sign APK (signapk with platform key)
# ============================================================
Step "Sign APK" {
    $inApk = Join-Path $mybv "dist\mybv.apk"
    $outApk = Join-Path $root "mybv.apk"
    $cp = "$signapkJar;$(Join-Path $tools 'bcprov.jar');$(Join-Path $tools 'bcpkix.jar');$(Join-Path $tools 'apksig.jar')"
    & $java -cp $cp com.android.signapk.SignApk "$root\platform.x509.pem" "$root\platform.pk8" $inApk $outApk
    if ($LASTEXITCODE -ne 0) { throw "signapk failed (exit $LASTEXITCODE)" }
    Write-Host "  signed: $outApk"
}

# ============================================================
# 7. Generate update.json
# ============================================================
Step "Generate update.json" {
    $outApk = Join-Path $root "mybv.apk"
    $md5 = (Get-FileHash $outApk -Algorithm MD5).Hash.ToLower()
    $size = (Get-Item $outApk).Length
    $date = Get-Date -Format "yyyyMMdd"
    $json = @{
        apkMd5   = $md5
        apkUrl   = "https://github.com/uiiang/bilibilitv1.6.6-repair-uiiang/raw/refs/heads/main/mybv.apk"
        fileSize = $size
        id       = ""
        newFeature = ""
        publishTime = 0
        title    = "New"
        upgradeType = 1
        versionCode = [int]$date
        versionName = "1.6.6.$date"
    } | ConvertTo-Json
    Write-Utf8 (Join-Path $root "update.json") $json
    Write-Host "  update.json generated (md5=$md5)"
}

# ============================================================
# Summary
# ============================================================
Write-Host ""
Write-Host "=========================================" -ForegroundColor Green
Write-Host "Build completed successfully!" -ForegroundColor Green
Write-Host "=========================================" -ForegroundColor Green
$total = 0
foreach ($t in $script:timings) {
    Write-Host ("  {0,-45} {1,8} s" -f $t.Name, $t.Seconds)
    $total += $t.Seconds
}
Write-Host ("  {0,-45} {1,8} s" -f "TOTAL", [math]::Round($total,1))
Write-Host ""
Write-Host "APK: $root\mybv.apk ($([math]::Round((Get-Item (Join-Path $root 'mybv.apk')).Length/1MB,1)) MB)"
