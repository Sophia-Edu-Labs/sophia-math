#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#only("1-")[- Du hast korrekt geantwortet, dass die 4. Wurzel von 16 gleich 2 ist.]
#only("1")[
#voiceover("Großartige Arbeit! Das ist absolut richtig. Du hast korrekt geantwortet, dass die 4. Wurzel von 16 gleich 2 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[- Lass uns $root(4,16)$ Schritt für Schritt lösen.]
#v(20pt)
#only("2-")[- Wir müssen eine Zahl finden, die, wenn sie mit 4 potenziert wird, 16 ergibt.]
#v(20pt)
#only("3-")[- Nennen wir diese Zahl $x$. Wir suchen also nach $x$, wobei $x^4=16$.]
#v(20pt)
#only("4-")[- Indem wir die vierte Wurzel von beiden Seiten nehmen, erhalten wir: $root(4,x^4)=root(4,16)$]
#v(20pt)
#only("5-")[- Die vierte Wurzel und die vierte Potenz heben sich auf der linken Seite auf, was ergibt: $x=root(4,16)$]
#v(20pt)
#only("6-")[- Welche Zahl ergibt, wenn sie mit 4 potenziert wird, 16? Es ist 2, weil $2^4=16$.]
#v(20pt)
#only("7-")[- Daher ist $root(4,16)=2$. 🌟]
#only("1")[
#voiceover("Lass uns die vierte Wurzel von 16 Schritt für Schritt lösen.")
]
#only("2")[
#voiceover("Wir müssen eine Zahl finden, die, wenn sie mit 4 potenziert wird, 16 ergibt.")
]
#only("3")[
#voiceover("Nennen wir diese Zahl x. Wir suchen also nach x, wobei x hoch 4 gleich 16 ist.")
]
#only("4")[
#voiceover("Indem wir die vierte Wurzel von beiden Seiten nehmen, erhalten wir: die vierte Wurzel von x hoch 4 ist gleich die vierte Wurzel von 16.")
]
#only("5")[
#voiceover("Die vierte Wurzel und die vierte Potenz heben sich auf der linken Seite auf, was ergibt: x ist gleich die vierte Wurzel von 16.")
]
#only("6")[
#voiceover("Welche Zahl ergibt, wenn sie mit 4 potenziert wird, 16? Es ist 2, weil 2 hoch 4 gleich 16 ist.")
]
#only("7")[
#voiceover("Daher ist die vierte Wurzel von 16 gleich 2.")
]
]