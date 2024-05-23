#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lineare Abbildungseigenschaften]
#v(40pt)
#only("1-")[Wenn $T$ eine lineare Abbildung ist, dann:]
#v(20pt)
#only("2-")[1. $T(0) = 0$ 🎯]
#v(20pt)
#only("3-")[2. $T(c u + d v) = c T(u) + d T(v)$ 🧮]
#only("1")[
#voiceover("Wenn T eine lineare Abbildung ist, hat sie zwei wichtige Eigenschaften.")
]
#only("2")[
#voiceover("Erstens ist T des Nullvektors immer der Nullvektor.")
]
#only("3")[
#voiceover("Zweitens ist T einer linearen Kombination der Vektoren u und v gleich der linearen Kombination von T von u und T von v, wobei c und d beliebige Skalare sind.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaft 1: $T(0) = 0$]
#v(40pt)
#only("1-")[- Abbildung erhält den Nullvektor 🎯]
#v(20pt)
#only("2-")[Beispiel: Wenn $T(mat(x; y)) = mat(2x; 3y)$, dann $T(mat(0; 0)) = mat(0; 0)$]
#only("1")[
#voiceover("Schauen wir uns die erste Eigenschaft genauer an. Eine lineare Abbildung bildet den Nullvektor immer auf den Nullvektor ab.")
]
#only("2")[
#voiceover("Zum Beispiel, wenn T definiert ist als T des Vektors x, y gleich dem Vektor 2x, 3y, dann ist T des Nullvektors 0, 0 gleich dem Nullvektor 0, 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaft 2: $T(c u + d v) = c T(u) + d T(v)$]
#v(40pt)
#only("1-")[- Abbildung erhält lineare Kombinationen 🧮]
#v(20pt)
#only("2-")[Beispiel: Wenn $T(mat(x; y)) = mat(2x; 3y)$, dann:]
#v(10pt)
#only("3-")[$T(c mat(u_1; u_2) + d mat(v_1; v_2)) = c T(mat(u_1; u_2)) + d T(mat(v_1; v_2))$]
#v(10pt)
#only("4-")[$= c mat(2u_1; 3u_2) + d mat(2v_1; 3v_2)$]
#only("1")[
#voiceover("Die zweite Eigenschaft besagt, dass eine lineare Abbildung lineare Kombinationen erhält.")
]
#only("2")[
#voiceover("Mit dem gleichen Beispiel wie zuvor, wenn T des Vektors x, y gleich dem Vektor 2x, 3y ist, dann...")
]
#only("3")[
#voiceover("T der linearen Kombination c mal dem Vektor u1, u2 plus d mal dem Vektor v1, v2 ist gleich...")
]
#only("4")[
#voiceover("c mal T des Vektors u1, u2 plus d mal T des Vektors v1, v2, was gleich c mal dem Vektor 2u1, 3u2 plus d mal dem Vektor 2v1, 3v2 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Lineare Abbildung $T$: 🗺]
#v(20pt)
#only("2-")[1. $T(0) = 0$ (erhält Nullvektor)]
#v(20pt)
#only("3-")[2. $T(c u + d v) = c T(u) + d T(v)$ (erhält lineare Kombinationen)]
#only("1")[
#voiceover("Zusammenfassend hat eine lineare Abbildung T zwei Schlüsseleigenschaften.")
]
#only("2")[
#voiceover("Erstens bildet sie den Nullvektor auf den Nullvektor ab.")
]
#only("3")[
#voiceover("Zweitens erhält sie lineare Kombinationen, was bedeutet, dass T einer linearen Kombination der Vektoren u und v gleich der linearen Kombination von T von u und T von v ist.")
]
]