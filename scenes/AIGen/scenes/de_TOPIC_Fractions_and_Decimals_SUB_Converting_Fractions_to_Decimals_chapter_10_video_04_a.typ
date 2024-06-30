#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartig! Du hast die richtige Antwort. Lass uns Schritt für Schritt durch die Lösung gehen, um zu verstehen, wie wir $9/2$ in eine Dezimalzahl umwandeln.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von $9/2$ in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$9/2$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch neun durch zwei.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Ansatz: Multiplizieren mit $5/5$]
#v(40pt)
#only("1-")[- Zähler und Nenner mit 5 multiplizieren ✖️]
#v(20pt)
#only("2-")[- Dies ändert den Wert des Bruchs nicht ⚖️]
#v(20pt)
#only("3-")[- Es macht die Division einfacher 🧮]
#only("1")[
#voiceover("Unser Ansatz wird sein, sowohl den Zähler als auch den Nenner mit 5 zu multiplizieren.")
]
#only("2")[
#voiceover("Dies ändert den Wert des Bruchs nicht, da wir mit $5/5$ multiplizieren, was gleich 1 ist.")
]
#only("3")[
#voiceover("Aber es wird unsere Division einfacher machen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multiplizieren mit $5/5$]
#v(40pt)
#only("1-")[$9/2 = (9 × 5)/(2 × 5)$]
#v(20pt)
#only("2-")[$= 45/10$]
#only("1")[
#voiceover("Lass uns $9/2$ mit $5/5$ multiplizieren. Im Zähler erhalten wir 9 mal 5, und im Nenner erhalten wir 2 mal 5.")
]
#only("2")[
#voiceover("Das ergibt $45/10$.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Dividieren]
#v(40pt)
#only("1-")[$45/10 = 4.5$]
#v(20pt)
#only("2-")[Dezimalpunkt vor die letzte Ziffer setzen ➡️ 4.5]
#only("1")[
#voiceover("Jetzt können wir einfach 45 durch 10 teilen.")
]
#only("2")[
#voiceover("Beim Teilen durch 10 verschieben wir einfach den Dezimalpunkt um eine Stelle nach links. Also wird aus 45 4.5.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[#text(size: 24pt)[$9/2$ als Dezimalzahl ist 4.5]]
#v(40pt)
#only("2-")[💡 Denke daran: $9/2 = 45/10 = 4.5$]
#only("1")[
#voiceover("Daher ist unsere endgültige Antwort, dass $9/2$ als Dezimalzahl 4.5 ist.")
]
#only("2")[
#voiceover("Denke daran, wir haben dies erreicht, indem wir sowohl den Zähler als auch den Nenner mit 5 multipliziert haben, was uns $45/10$ gegeben hat, was gleich 4.5 ist.")
]
]