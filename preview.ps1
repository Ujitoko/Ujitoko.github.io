# preview.ps1 - Notes を含むサイトをローカルでビルド／プレビューする。
#
# このリポジトリは UNC パス (\\home-nas\...) 上にあり、Jekyll をそのまま動かすと
# 次の3つの問題に当たる。本スクリプトはそれらをまとめて回避する。
#
#   1. Ruby 付属の gem.cmd / bundle.cmd / jekyll.cmd は内部で CMD.EXE を起動するが、
#      CMD は UNC を作業ディレクトリにできず "UNC paths are not supported" となって
#      ソースが C:\Windows に化ける。-> .cmd を経由せず ruby.exe から直接起動する。
#   2. Jekyll に UNC パスをソースとして渡すと、出力が _site\home-nas\home\... の
#      ように入れ子になる。-> subst でドライブレターを割り当ててから渡す。
#   3. paper/ にある論文 PDF はファイル名が長く、出力先が深いと Windows の
#      MAX_PATH (260文字) を超えて ENOENT になる。-> 出力先を短いパスにする。
#
# 使い方:
#   .\preview.ps1              # ビルドして http://127.0.0.1:4000 で配信
#   .\preview.ps1 -BuildOnly   # ビルドのみ
#
# GitHub Pages 側は Linux 上で普通にビルドするため、以上はすべてローカル固有の事情。

[CmdletBinding()]
param(
  [switch]$BuildOnly,
  [int]$Port = 4000
)

$ErrorActionPreference = 'Stop'

$RubyBin  = 'C:\Ruby33-x64\bin'
$RepoUnc  = '\\home-nas\home\RDBox_\Ujitoko.github.io'
$Parent   = Split-Path $RepoUnc -Parent
$RepoName = Split-Path $RepoUnc -Leaf
# 出力先は MAX_PATH 対策で短く、かつリポジトリ外に置く（_site を作らない）
$Dest     = Join-Path $env:TEMP 'jk-site'

if (-not (Test-Path (Join-Path $RubyBin 'ruby.exe'))) {
  throw "Ruby が見つかりません: $RubyBin  (winget install RubyInstallerTeam.RubyWithDevKit.3.3)"
}

# --- 空いているドライブレターに親ディレクトリを subst する -------------------
$used = (Get-PSDrive -PSProvider FileSystem).Name
$letter = 'J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y' |
          Where-Object { $used -notcontains $_ } | Select-Object -First 1
if (-not $letter) { throw '空いているドライブレターがありません。' }

$drive = $letter + ':'

& subst $drive $Parent
if ($LASTEXITCODE -ne 0) { throw "subst に失敗しました (exit $LASTEXITCODE)" }
Write-Host "mapped $drive -> $Parent" -ForegroundColor DarkGray

try {
  $src = Join-Path $drive $RepoName
  $env:BUNDLE_GEMFILE = Join-Path $src 'Gemfile'

  $jekyllArgs = @('-s', $src, '-d', $Dest)
  if ($BuildOnly) {
    $cmd = 'build'
  } else {
    # ネットワーク共有上のファイル監視は当てにならないので --no-watch にする。
    # 記事を編集したらスクリプトを再実行すること。
    $cmd = 'serve'
    $jekyllArgs += @('--no-watch', '--port', "$Port")
  }

  $ruby   = Join-Path $RubyBin 'ruby.exe'
  $jekyll = Join-Path $RubyBin 'jekyll'

  Push-Location $src
  & $ruby -rbundler/setup $jekyll $cmd @jekyllArgs
  $code = $LASTEXITCODE
  Pop-Location

  if ($code -ne 0) { throw "jekyll $cmd が失敗しました (exit $code)" }
  Write-Host "出力先: $Dest" -ForegroundColor Green
}
finally {
  # 後始末。ドライブレターは残さない。
  & subst $drive /D 2>$null | Out-Null
  Write-Host "unmapped $drive" -ForegroundColor DarkGray
}
