#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung von n-ten Wurzeln 🌳]
#v(40pt)
#only("1-")[- Faktorisierung der Zahl unter der Wurzel]
#v(20pt)
#only("2-")[- Beispiel: $root(3, 27) = root(3, 3^3) = 3$]
#v(20pt)
#only("3-")[- Warum? $root(3, 3^3) = (3^3)^(1/3) = 3^(3/3) = 3^1 = 3$]
#only("1")[
#voiceover("Um n-te Wurzeln zu vereinfachen, können wir die Zahl unter der Wurzel faktorisieren.")
]
#only("2")[
#voiceover("Zum Beispiel kann die dritte Wurzel von 27 vereinfacht werden, indem wir 27 als 3 hoch 3 faktorisieren. Das ergibt die dritte Wurzel von 3 hoch 3, was sich zu 3 vereinfacht.")
]
#only("3")[
#voiceover("Warum funktioniert das? Nun, die dritte Wurzel von 3 hoch 3 ist gleich 3 hoch 3 zur Potenz ein Drittel. Das ist dasselbe wie 3 hoch 3 geteilt durch 3, was einfach 3 hoch 1 oder einfach 3 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Weitere Beispiele 📝]
#v(40pt)
#only("1-")[- $root(4, 81) = root(4, 3^4) = 3$]
#v(20pt)
#only("2-")[- $root(5, 32) = root(5, 2^5) = 2$]
#v(20pt)
#only("3-")[- $root(2, 64) = root(2, 8^2) = 8$]
#only("1")[
#voiceover("Schauen wir uns noch ein paar weitere Beispiele an. Die vierte Wurzel von 81 kann vereinfacht werden, indem wir 81 als 3 hoch 4 faktorisieren. Das ergibt die vierte Wurzel von 3 hoch 4, was sich zu 3 vereinfacht.")
]
#only("2")[
#voiceover("Ähnlich kann die fünfte Wurzel von 32 vereinfacht werden, indem wir 32 als 2 hoch 5 faktorisieren. Das ergibt die fünfte Wurzel von 2 hoch 5, was sich zu 2 vereinfacht.")
]
#only("3")[
#voiceover("Schließlich kann die Quadratwurzel von 64 vereinfacht werden, indem wir 64 als 8 hoch 2 faktorisieren. Das ergibt die Quadratwurzel von 8 hoch 2, was sich zu 8 vereinfacht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Punkte 🔑]
#v(40pt)
#only("1-")[- Faktorisierung der Zahl unter der Wurzel]
#v(20pt)
#only("2-")[- Suche nach einem Faktor, der eine perfekte n-te Potenz ist]
#v(20pt)
#only("3-")[- Die n-te Wurzel und die Potenz heben sich auf]
#only("1")[
#voiceover("Um n-te Wurzeln zu vereinfachen, beginne immer mit der Faktorisierung der Zahl unter der Wurzel.")
]
#only("2")[
#voiceover("Suche nach einem Faktor, der eine perfekte n-te Potenz ist, wie ein perfektes Quadrat, ein perfekter Würfel und so weiter.")
]
#only("3")[
#voiceover("Wenn Du die n-te Wurzel einer Zahl nimmst, die zur n-ten Potenz erhoben wurde, heben sich die Wurzel und die Potenz auf und Du erhältst das vereinfachte Ergebnis.")
]
]