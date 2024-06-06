#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Notation für n-te Wurzeln 📝]

#v(40pt)

#only("1-")[- $root(n, a)$]

#only("1")[
#voiceover("Lass uns die Notation für n-te Wurzeln wiederholen. Wir schreiben die n-te Wurzel einer Zahl a als 'root' von n und a, wobei n die Wurzel und a die Zahl ist.")
]

#v(40pt)

#only("2-")[- Beispiel: $root(3, 8) = 2$]

#only("2")[
#voiceover("Zum Beispiel ist die dritte Wurzel von 8, geschrieben als 'root' von 3 und 8, gleich 2. Denn 2 hoch 3, oder 2 zur Potenz 3, ergibt 8.")
]

#v(40pt)

#only("3-")[- $n$: Wurzel 🌱, $a$: Zahl 🔢]

#only("3")[
#voiceover("Denke daran, in der Notation 'root' von n und a steht n für die Wurzel und a für die Zahl.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schnellquiz 🤔]

#v(40pt)

#only("1-")[Was ist $root(5, 32)$?]
// Die Quizfrage wird ab Folie 1 angezeigt

#only("1")[
#voiceover("Nun, lass uns dein Verständnis mit einem kurzen Quiz testen. Was ist die fünfte Wurzel von 32?")
]

#v(40pt)

#only("2-")[Antwort: $2$]
// Die Antwort wird ab Folie 2 angezeigt

#only("2")[
#voiceover("Die Antwort ist 2. Denn 2 hoch 5 ergibt 32.")
]

#v(40pt)

#only("3-")[$ 2^5 = 2 dot 2 dot 2 dot 2 dot 2 = 32$]
// Die Berechnung wird ab Folie 3 angezeigt

#only("3")[
#voiceover("Genau, 2 multipliziert mit sich selbst 5 Mal ergibt 32.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]

#v(40pt)

#only("1-")[- n-te Wurzel Notation: $root(n, a)$ 📝]

#only("1")[
#voiceover("Zusammenfassend ist die wichtigste Erkenntnis, dass wir die n-te Wurzel einer Zahl a als 'root' von n und a schreiben.")
]

#v(40pt)

#only("2-")[- $n$: Wurzel 🌱, $a$: Zahl 🔢]

#only("2")[
#voiceover("Wobei n die Wurzel und a die Zahl darstellt.")
]

#v(40pt)

#only("3-")[- Beispiel: $root(3, 8) = 2$ ✅]

#only("3")[
#voiceover("Zum Beispiel ist die dritte Wurzel von 8 gleich 2, weil 2 hoch 3 gleich 8 ist.")
]
]