<!-- paper-key: doi:10.1109/tvcg.2021.3067777 -->
<!-- 論文情報（このコメントと note-start は残してください）
Combining Dynamic Passive Haptics and Haptic Retargeting for Enhanced Haptic Feedback in Virtual Reality
André Zenner, Kristin Ullmann, Antonio Krüger
IEEE Transactions on Visualization and Computer Graphics (2021)
-->
<!-- note-start -->

"physical proxy objects need to be sufficiently similar to their virtual counterparts in terms of haptic properties, for challenge"という課題が明記されている点が個人的にはよかった。passive haptics系の研究では形状や位置などを考慮していても、その触感の類似性の観点での課題意識はほどんどなかったのではないかと思っていたが、この研究ではその課題にアプローチしている。ただし静的なphysical propを使う研究ではなくて、棒の内部の錘の位置を制御するdynamic passive hapticsを扱っている。また把持位置を視覚的にずらすhaptic retargetingを組み合わせる手法を提案している。例えば、棒の右側を重く感じさせる場合は、錘を右へ移動させるのに加えて、ユーザには中央を握っているように見せながら、実際の手を左寄りへ誘導する。