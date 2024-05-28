#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Das Minimum finden]
#v(40pt)
#only("1-")[- Gegeben: $f(x) = x^2 - 4x + 7$]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen.")
]
#only("2")[
#voiceover("Zuerst haben wir die Funktion f von x gleich x Quadrat minus 4x plus 7 gegeben.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Differenzieren]
#v(40pt)
#only("1-")[- $dif f / dif x = 2x - 4$]
#only("1")[
#voiceover("Um den Minimalwert zu finden, differenzieren wir zuerst die Funktion. Die Ableitung von f nach x ist 2x minus 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Ableitung gleich Null setzen]
#v(40pt)
#only("1-")[- Setze $2x - 4 = 0$]
#v(20pt)
#only("2-")[- Löse nach $x$: $x = 2$]
#only("1")[
#voiceover("Als nächstes setzen wir die Ableitung gleich Null. Dies ergibt die Gleichung 2x minus 4 gleich 0.")
]
#only("2")[
#voiceover("Wenn wir diese Gleichung nach x lösen, erhalten wir x gleich 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: An kritischem Punkt auswerten]
#v(40pt)
#only("1-")[- Werte $f(2)$ aus:]
#v(20pt)
#only("2-")[- $f(2) = 2^2 - 4 * 2 + 7 = 3$]
#only("1")[
#voiceover("Der letzte Schritt ist, die Funktion an diesem kritischen Punkt auszuwerten. Wir berechnen f von 2.")
]
#only("2")[
#voiceover("f von 2 ist gleich 2 Quadrat minus 4 mal 2 plus 7, was sich zu 3 vereinfacht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Minimalwert]
#v(40pt)
#only("1-")[- Der Minimalwert von $f(x)$ ist 3. 🎉]
#only("1")[
#voiceover("Daher ist der Minimalwert der Funktion f von x gleich x Quadrat minus 4x plus 7 gleich 3. Fantastische Arbeit!")
]
]