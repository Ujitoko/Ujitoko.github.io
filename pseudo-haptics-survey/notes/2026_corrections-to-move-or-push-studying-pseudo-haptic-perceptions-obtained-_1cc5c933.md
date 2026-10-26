<!-- paper-key: doi:10.1109/tvcg.2026.3719807 -->
<!-- 論文情報（このコメントと note-start は残してください）
Corrections to “Move or Push? Studying Pseudo-Haptic Perceptions Obtained With Motion or Force Input”
Yutaro Hirao, Takuji Narumi, Ferran Argelaguet, Anatole Lécuyer
IEEE Transactions on Visualization and Computer Graphics (2026)
-->
<!-- memo-assist-start
1. 論文の解説
- ひとことで：運動入力と力入力によるpseudo-hapticsを比較した原論文について、式に誤って含まれていたゲイン変数Gを削除する訂正文である。新しい実験や知覚特性の報告ではない。
- 何をした？：訂正対象は、原論文「Move or Push?」の式（1）である。F_sを計算する式に、本来不要なゲイン変数Gが入っていたため、その項を除いた正しい式を示している。
- どう確かめた？：訂正文は、誤りの所在と修正後の式を示す1ページの文書である。参加者実験、データの再解析、入力方式の追加比較は報告されていない。
- 分かったこと：修正後の式はF_s = (0.067 × exp(1.5 × V_out)) × 0.20 [N]であり、Gを含まない。著者は、訂正がこの式の誤植に限定され、ほかの変更は求めていないと明記している。
- 読むときの注意：この訂正文だけでは、原研究の実験条件や、運動入力と力入力のどちらがどの知覚に適していたかは説明できない。再実装では修正式を参照する必要があるが、掲載式の誤植から実験時の実装にも誤りがあったと推測してはいけない。

2. ファニーな面白ポイント
- 目の付け所：触覚装置の性能だけに頼らず、利用者が何を手掛かりに感覚を判断するかを設計対象にした点。
- ひょうきんな見方：同じ装置でも、見せ方を変えれば別の手応えとして働く。ハードウェアより解釈の着回しを試している。
- 論文の作り：題名そのものが問いになっており、論文全体をその問いへの回答として読める。
- 系譜：同じ著者が関わる[Move or Push? Studying Pseudo-Haptic Perceptions Obtained With Motion or Force Input]（https://doi.org/10.1109/tvcg.2025.3624414）（2025）が近い。扱う問題と方法の組み合わせが近い。この論文は「位置論文・その他」、先行研究は「重さ」。

3. メモの下書き
運動入力と力入力で得られる擬似触覚知覚を比較した論文「Move or Push?」の記述に対する正誤表を掲載した。触覚装置の性能だけに頼らず、利用者が何を手掛かりに感覚を判断するかを設計対象にした点が面白い。同じ著者が関わる[Move or Push? Studying Pseudo-Haptic Perceptions Obtained With Motion or Force Input]（https://doi.org/10.1109/tvcg.2025.3624414）（2025）が近い。扱う問題と方法の組み合わせが近い。この論文は「位置論文・その他」、先行研究は「重さ」。完成した効果検証というより、着想と今後の検証項目を示す段階の研究として読みたい。
memo-assist-end -->
<!-- note-start -->

