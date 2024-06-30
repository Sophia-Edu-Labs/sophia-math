#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit! Du hast die Lösung korrekt identifiziert. Lass uns gemeinsam den Prozess durchgehen, um $21/8$ in eine Dezimalzahl umzuwandeln.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von $21/8$ in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$21/8$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch einundzwanzig Achtel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vorgehensweise]
#v(40pt)
#only("1-")[- Zähler und Nenner mit 125 multiplizieren ✖️]
#v(20pt)
#only("2-")[- Ergebnis vereinfachen 🔢]
#v(20pt)
#only("3-")[- Dezimalpunkt setzen ➡️]
#only("1")[
#voiceover("Unser Ansatz wird sein, sowohl den Zähler als auch den Nenner mit 125 zu multiplizieren. Dadurch erhalten wir einen Bruch mit 1000 als Nenner, was leicht in eine Dezimalzahl umgewandelt werden kann.")
]
#only("2")[
#voiceover("Dann werden wir das Ergebnis vereinfachen.")
]
#only("3")[
#voiceover("Schließlich setzen wir den Dezimalpunkt korrekt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Mit 125 multiplizieren]
#v(40pt)
#only("1-")[$21/8 = (21 \cdot 125)/(8 \cdot 125)$]
#v(20pt)
#only("2-")[$= 2625/1000$]
#only("1")[
#voiceover("Lass uns beginnen, indem wir sowohl den Zähler als auch den Nenner mit 125 multiplizieren. Einundzwanzig mal 125 ist 2625, und acht mal 125 ist 1000.")
]
#only("2")[
#voiceover("Unser Bruch wird also zu $2625/1000$.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Vereinfachen]
#v(40pt)
#only("1-")[$2625/1000 = 2.625$]
#v(20pt)
#only("2-")[Dezimalpunkt 3 Stellen von rechts setzen ⬅️]
#only("1")[
#voiceover("Um dies in eine Dezimalzahl umzuwandeln, müssen wir den Dezimalpunkt in $2625$ einfach drei Stellen nach links verschieben, da der Nenner 1000 ist.")
]
#only("2")[
#voiceover("Das ergibt $2.625$.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[#text(size: 24pt)[$21/8$ als Dezimalzahl ist $2.625$]]
#v(40pt)
#only("2-")[💡 Denke daran: Das Multiplizieren mit $125/125$ entspricht $1$, daher haben wir den Wert nicht verändert!]
#only("1")[
#voiceover("Unsere endgültige Antwort ist also, dass $21/8$ als Dezimalzahl $2.625$ ist.")
]
#only("2")[
#voiceover("Denke daran, wir haben mit $125/125$ multipliziert, was $1$ entspricht, daher haben wir den Wert des Bruchs nicht verändert. Wir haben es nur einfacher gemacht, ihn in eine Dezimalzahl umzuwandeln.")
]
]