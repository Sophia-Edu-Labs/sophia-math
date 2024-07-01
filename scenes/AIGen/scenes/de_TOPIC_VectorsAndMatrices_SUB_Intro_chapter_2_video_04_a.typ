#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Berechnung des Skalarprodukts]
#v(40pt)

#only("1-")[Lass uns das Skalarprodukt von Vektoren berechnen:]
#v(20pt)
#only("2-")[#align(center)[$vec(a) = (-1, 2, 3)$ und $vec(b) = (4, 0, -2)$]]
#v(20pt)
#only("3-")[#text(fill: blue)[Formel: $vec(a) dot vec(b) = a_1 b_1 + a_2 b_2 + a_3 b_3$]]
#v(20pt)
#only("4-")[Berechnung:]
#only("5-")[#align(center)[$(-1 dot 4) + (2 dot 0) + (3 dot (-2))$]]
#v(20pt)
#only("6-")[#align(center)[$= -4 + 0 - 6$]]
#v(20pt)
#only("7-")[#align(center)[#text(fill: green)[Ergebnis: $-10$]]]

#only("1")[#voiceover("Ausgezeichnete Arbeit! Du hast die richtige Antwort. Lass uns Schritt für Schritt durch die Lösung gehen, um zu verstehen, wie wir auf -10 kommen.")]

#only("2")[#voiceover("Wir haben zwei Vektoren gegeben: a, das ist minus eins, zwei, drei, und b, das ist vier, null, minus zwei.")]

#only("3")[#voiceover("Um das Skalarprodukt zu berechnen, verwenden wir die Formel: a dot b gleich a1 mal b1, plus a2 mal b2, plus a3 mal b3. Hierbei repräsentieren die Indizes die Komponenten jedes Vektors.")]

#only("4")[#voiceover("Nun lass uns die Werte unserer Vektoren in diese Formel einsetzen.")]

#only("5")[#voiceover("Wir erhalten: minus eins mal vier, plus zwei mal null, plus drei mal minus zwei.")]

#only("6")[#voiceover("Lass uns jeden Term auswerten: minus eins mal vier ist minus vier. Zwei mal null ist null. Und drei mal minus zwei ist minus sechs. Wenn wir diese addieren...")]

#only("7")[#voiceover("Erhalten wir minus vier plus null minus sechs, was gleich minus zehn ist. Und das ist unsere endgültige Antwort! Das Skalarprodukt dieser beiden Vektoren ist tatsächlich minus zehn.")]
]