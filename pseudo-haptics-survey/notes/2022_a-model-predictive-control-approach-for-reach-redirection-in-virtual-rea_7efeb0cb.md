<!-- paper-key: doi:10.1145/3491102.3501907 -->
<!-- 論文情報（このコメントと note-start は残してください）
A Model Predictive Control Approach for Reach Redirection in Virtual Reality
Eric J. Gonzalez, Elyse D. Z. Chase, Pramod Kotipalli, Sean Follmer
CHI Conference on Human Factors in Computing Systems (2022)
-->
<!-- note-start -->

ユーザの実際の手を目的の位置へ誘導する際、到達運動をMinimum Jerkモデルで予測しながら、実際の手とバーチャル手のずらし方をモデル予測制御で逐次決定する手法。従来のHaptic Retargetingでは、開始位置と目標位置に基づく固定的なマッピングを用いることが多いが、本研究では目標への到達精度、ずらし量、ずらしの滑らかさをコストとして、約10ミリ秒ごとに最適化する。[Clarence-2021](https://doi.org/10.1109/VR50410.2021.00036)が予測していたのはユーザがどの物体へ手を伸ばしているかであり、本研究が予測するのは、目標が既知の状態で視覚的なずらしに対して実手がどう動くかである。