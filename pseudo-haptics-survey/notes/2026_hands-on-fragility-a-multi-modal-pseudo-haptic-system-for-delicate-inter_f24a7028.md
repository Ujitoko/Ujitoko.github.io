<!-- paper-key: doi:10.1109/vrw70859.2026.00388 -->
<!-- 論文情報（このコメントと note-start は残してください）
Hands-On Fragility: A Multi-Modal Pseudo-Haptic System for Delicate Interaction in VR
João Anisio Marinho Da Nobrega, Davi Duarte de Freitas, Marcos Arthur Da Silva Melo, Gabriel Lucena, Alyson Souza
2026 IEEE Conference on Virtual Reality and 3D User Interfaces Abstracts and Workshops (VRW) (2026)
-->
<!-- memo-assist-start
1. 論文の解説
- ひとことで：素手で仮想物体を握ると、亀裂、警告音、手首のゲージが変化する「壊れやすさ」の体験デモである。物理的な抵抗を加えずに、壊すことへの緊張と慎重な操作を引き出すことを狙っている。
- 何をした？：UnityとMeta Quest 3を使い、手の追跡から握りの強さを表す操作量Gを生成する。Gが警告閾値を超えると亀裂が広がり、急な握りの変化ほど大きな音が鳴る。ロボット風の仮想手首に付けたゲージが、現在の操作量と破損閾値の関係を示し、破損前に握り方を調整できるようにしている。
- どう確かめた？：論文の中心はシステム構成と、展示で体験できるインタラクションの説明である。根拠として31名の評価を紹介し、壊れやすさの異なる物体への主観評価と手の動きを報告している。入力中の「Eliciting Care in VR」と参加者情報および主要な結果が一致しており、同じ評価に基づくデモ報告と読める。
- 分かったこと：物体間の壊れやすさの評価には有意差があり、高い壊れやすさを設定した試験管では手の速度が40%低下したと報告されている。これは、視聴覚的な破損の兆候によって操作の慎重さを変えられることを示唆する。デモとしての成果は、壊れやすさを見た目の属性だけでなく、握り方を調整する連続的な操作体験として提示した点にある。
- 読むときの注意：実際の握力や機械的な反力を再現したシステムではなく、Gは追跡情報から作る操作量である。速度低下の比較基準や詳細な統計は抜粋に示されず、実物と同等の抵抗感や反射を実証したとは言えない。関連する「Eliciting Care in VR」と合わせて読む際は、独立した追試の証拠として二重に数えないよう注意する。

2. ファニーな面白ポイント
- 目の付け所：触覚装置の性能だけに頼らず、利用者が何を手掛かりに感覚を判断するかを設計対象にした点。
- ひょうきんな見方：物理量を正面から増やさず、別の感覚から回り込む。触覚へ行くために少し遠回りする研究。
- 論文の作り：「Hands-On Fragility」という短い名前に、仕組みや利用場面を覚えさせる役まで持たせている。
- 系譜：同じ著者が関わる[Eliciting Care for Virtual Objects: A Work-in-Progress on Pseudo-Haptic Fragility via Dynamic Visual Feedback and Direct Hand Interaction]（https://doi.org/10.5753/svr_estendido.2025.15255）（2025）が近い。扱う感覚は「その他属性」、感覚を変える方法は「画面上の画面上の物体の変形・画面上の記号や見た目」、使う環境や入力は「VR」。この論文は「感覚の仕組みを確かめる研究」、先行研究は「手の動きを追跡するVR」。

3. メモの下書き
VRで壊れやすい物体を扱う場面に向け、多感覚の擬似触覚により繊細な操作感を提示するシステムを提案した。触覚装置の性能だけに頼らず、利用者が何を手掛かりに感覚を判断するかを設計対象にした点が面白い。同じ著者が関わる[Eliciting Care for Virtual Objects: A Work-in-Progress on Pseudo-Haptic Fragility via Dynamic Visual Feedback and Direct Hand Interaction]（https://doi.org/10.5753/svr_estendido.2025.15255）（2025）が近い。扱う感覚は「その他属性」、感覚を変える方法は「画面上の画面上の物体の変形・画面上の記号や見た目」、使う環境や入力は「VR」。この論文は「感覚の仕組みを確かめる研究」、先行研究は「手の動きを追跡するVR」。抄録がないため、詳しい仕組みと評価結果は本文を入手してから補いたい。
memo-assist-end -->
<!-- note-start -->

