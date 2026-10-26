<!-- paper-key: doi:10.1007/978-3-031-60449-2_7 -->
<!-- 論文情報（このコメントと note-start は残してください）
Perception-Driven Design Approach: Towards Interaction Design for Simulating and Evoking Tactile Properties via Digital Interfaces
Marina Ricci, Alessandra Scarcelli, Piera Losciale, Annalisa Di Roma
Lecture notes in computer science (2024)
-->
<!-- memo-assist-start
1. 論文の解説
- ひとことで：素材に触れた感じを、操作に連動する変形映像と音によって伝えるための設計枠組みを提案した論文である。実物の挙動を模擬する方法に加え、音や形の連想を使って触覚的な印象を喚起する方法を整理している。
- 何をした？：デジタル上で布や製品素材を選ぶ際、見た目だけでは柔らかさや粗さを判断しにくいという問題を扱う。利用者のジェスチャーに応じて素材の表示を変形させ、同時に音を変えることで、素材の触覚的性質を伝えることを目指す。著者らは、実素材の音や挙動を再現する設計と、別の文脈の音などから性質を連想させる設計を含む考え方をPerception-Driven Designと呼んでいる。
- どう確かめた？：関連文献と事例を分析し、多感覚統合やpseudo-hapticsの考え方を基に設計枠組みを構築した。実装候補として、点をばねでつないで変形を計算するモデルをUnityで扱い、質量、減衰、ばねの硬さなどを調整する方法を検討している。音については、操作の変化に追従できるよう、Pure Dataなどによるリアルタイム合成を候補として挙げた。提案方式の心理物理実験は今後の検証として位置づけられている。
- 分かったこと：成果は、どの操作にどの変形・音を対応させるかを、素材の触覚的性質と印象の両面から考える枠組みを提示したことである。特に音を付属的な演出とせず、視覚的変形と同期させ、素材の感じ方を構成する要素として扱っている。触覚刺激を物理的に再現する以外にも設計対象を広げているが、柔らかさや粗さの伝達が実際に改善したという実験結果は報告されていない。
- 読むときの注意：実装ツールの候補や設計上の議論を、完成したシステムの性能評価と混同してはいけない。また、素材から受ける連想や感情が変わることと、触覚属性を正確に知覚・弁別できることは異なり、その区別は本提案の検証で残されている。

2. ファニーな面白ポイント
- 目の付け所：触覚装置の性能だけに頼らず、利用者が何を手掛かりに感覚を判断するかを設計対象にした点。
- ひょうきんな見方：現実側の小道具は一つでも、VR側では役名を次々に変えられる。触覚プロップに早着替えを求める研究。
- 論文の作り：「Perception-Driven Design Approach」という短い名前に、仕組みや利用場面を覚えさせる役まで持たせている。
- 系譜：比較対象としては[Creating pseudo-tactile feedback in virtual reality using shared crossmodal properties of audio and tactile feedback]（https://www.scielo.org.za/scielo.php?pid=S2313-78352021000100002&script=sci_arttext）（2021）が近い。扱う問題と方法の組み合わせが近い。この論文は「その他手法」、先行研究は「表面の粗さや質感」。

3. メモの下書き
デジタル操作方法を通じて触覚的な性質を模擬し呼び起こすための、知覚を起点とした操作設計の考え方を示した。触覚装置の性能だけに頼らず、利用者が何を手掛かりに感覚を判断するかを設計対象にした点が面白い。比較対象としては[Creating pseudo-tactile feedback in virtual reality using shared crossmodal properties of audio and tactile feedback]（https://www.scielo.org.za/scielo.php?pid=S2313-78352021000100002&script=sci_arttext）（2021）が近い。扱う問題と方法の組み合わせが近い。この論文は「その他手法」、先行研究は「表面の粗さや質感」。抄録がないため、詳しい仕組みと評価結果は本文を入手してから補いたい。
memo-assist-end -->
<!-- note-start -->

デジタルインターフェースでの対象の触覚属性の知覚を引き起こすための設計フレームワークを示している。このようなフレームワークの提案でも、なんらかの検証は必要だと思うが、検証はこれからのようだ。