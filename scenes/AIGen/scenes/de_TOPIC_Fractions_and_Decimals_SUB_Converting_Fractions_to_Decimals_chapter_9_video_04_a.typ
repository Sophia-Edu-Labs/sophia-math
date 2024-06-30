#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit! Du hast die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir $13/8$ in eine Dezimalzahl umwandeln.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von $13/8$ in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$13/8$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch dreizehn Achtel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Ansatz: Multiplizieren mit 125]
#v(40pt)
#only("1-")[- Zähler und Nenner mit 125 multiplizieren]
#v(20pt)
#only("2-")[- Dadurch wird der Nenner 1000]
#v(20pt)
#only("3-")[- Einfach in eine Dezimalzahl umzuwandeln]
#only("1")[
#voiceover("Unser Ansatz wird sein, sowohl den Zähler als auch den Nenner mit 125 zu multiplizieren. Warum 125? Weil 8 mal 125 gleich 1000 ist, was die Umwandlung in eine Dezimalzahl erleichtert.")
]
#only("2")[
#voiceover("Wenn wir den Nenner mit 125 multiplizieren, erhalten wir 1000.")
]
#only("3")[
#voiceover("Und wenn der Nenner 1000 ist, ist es sehr einfach, in eine Dezimalzahl umzuwandeln.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multiplizieren mit 125]
#v(40pt)
#only("1-")[$13/8 = (13 dot 125)/(8 dot 125)$]
#v(20pt)
#only("2-")[$= 1625/1000$]
#only("1")[
#voiceover("Lass uns sowohl den Zähler als auch den Nenner mit 125 multiplizieren. Dreizehn mal 125 ist 1625, und 8 mal 125 ist 1000.")
]
#only("2")[
#voiceover("Also wird unser Bruch zu 1625 durch 1000.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: In eine Dezimalzahl umwandeln]
#v(40pt)
#only("1-")[$1625/1000 = 1.625$]
#v(20pt)
#only("2-")[Dezimalpunkt 3 Stellen von rechts setzen ⬅️]
#only("1")[
#voiceover("Um $1625/1000$ in eine Dezimalzahl umzuwandeln, müssen wir den Dezimalpunkt in 1625 einfach um drei Stellen nach links verschieben.")
]
#only("2")[
#voiceover("Das liegt daran, dass 1000 drei Nullen hat. Also erhalten wir 1.625.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[#text(size: 24pt)[$13/8$ als Dezimalzahl ist $1.625$]]
#v(40pt)
#only("2-")[💡 Denke daran: Multiplizieren mit $125/125 = 1$, also haben wir den Wert nicht verändert!]
#only("1")[
#voiceover("Daher ist unsere endgültige Antwort, dass $13/8$ als Dezimalzahl $1.625$ ist.")
]
#only("2")[
#voiceover("Denke daran, wir haben mit $125/125$ multipliziert, was gleich 1 ist, also haben wir den Wert des Bruchs nicht verändert. Wir haben es nur einfacher gemacht, ihn in eine Dezimalzahl umzuwandeln.")
]
]