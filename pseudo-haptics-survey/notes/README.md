# 論文メモ

このフォルダが、サーベイ以降の論文メモの正本です。各論文のMarkdownファイルで `<!-- note-start -->` より下に書いた内容が、公開ページの「メモ」として表示されます。

公開用と執筆用のページは分かれている。

- 公開用: `pseudo-haptics-survey/index.html`
- 執筆用: `pseudo-haptics-survey/editor.html`

執筆用ページをローカルで開き、上部の「Markdownメモを反映」を押すと、保存済みのメモを読み込んで両方のHTMLを再生成する。再生成が終わると執筆用ページも自動的に再読み込みされる。

このボタンを初めて使う環境では、サイトリポジトリのルートで次を一度実行する。ボタンは `pseudo-haptics-survey://rebuild` という専用URLスキームを開くだけで、OSごとの受け口をこのインストーラが登録する。

```powershell
# Windows
.\install-pseudo-haptics-survey-rebuild-button.ps1
```

```bash
# Mac（~/Applications に「Pseudo-haptics Survey Rebuild.app」を作る。共有をマウントした状態で実行する）
./install-pseudo-haptics-survey-rebuild-button.sh
```

最初にボタンを押したとき、ブラウザから専用リンクを開く確認が出たら許可する。`editor.html` と再生成用スクリプト（`.ps1` と `.sh`）はGitの除外対象で、公開サイトには含まれない。Macで再生成が動かないときは `~/Library/Logs/pseudo-haptics-survey-rebuild.log` を見る。

ボタンを使わず、ターミナルから一度だけ全体を更新する場合は、従来どおり次を実行する。

```powershell
# Windows
.\update-pseudo-haptics-survey.ps1
```

```bash
# Mac
./update-pseudo-haptics-survey.sh
```

再生成コマンドは `.ps1` と `.sh` の両方に書かれているので、ビルドの引数を変えるときは両方を直す。

ローカルの `pseudo-haptics-survey/editor.html` をブラウザで開くと、各論文の「メモを VS Code で開く」から対応するMarkdownを直接開ける。リンクは HTML を開いた場所からの相対パスで解決するので、Windows の `P:` ドライブや UNC（`\\home-nas\home\RDBox_`）でも、Mac の `/Volumes/home/RDBox_` でも同じ HTML が使える。

初回にVS Codeからネットワーク共有 `home-nas` を開く許可を求められたら、許可する。VS Code 1.78.1以降はUNC共有を安全上の理由で明示許可する仕様になっている。[公式案内](https://code.visualstudio.com/docs/setup/windows#_working-with-unc-paths)

新しい論文が追加されてテンプレートが必要になったときは、サーベイ資料側の `02_スクリプト` で次を実行する。

```powershell
python make_note_templates.py --period post --notes-dir "\\home-nas\home\RDBox_\Ujitoko.github.io\pseudo-haptics-survey\notes"
```

テンプレート作成は不足分を追加するだけで、記入済みのメモを上書きしない。
