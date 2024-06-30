#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartig! Du hast es richtig gemacht. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir ein Fünftel in eine Dezimalzahl umwandeln.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von $1/5$ in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$1/5$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch ein Fünftel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multiplizieren mit $2/2$]
#v(40pt)
#only("1-")[$ 1/5 = (1 × 2)/(5 × 2) $]
#v(20pt)
#only("2-")[$ = 2/10 $]
#only("1")[
#voiceover("Der entscheidende Schritt ist, sowohl den Zähler als auch den Nenner mit 2 zu multiplizieren. Dies ändert den Wert des Bruchs nicht, aber es gibt uns einen Nenner, der eine Zehnerpotenz ist, was die Umwandlung in eine Dezimalzahl erleichtert.")
]
#only("2")[
#voiceover("Nach dem Multiplizieren erhalten wir zwei Zehntel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Umwandlung in eine Dezimalzahl]
#v(40pt)
#only("1-")[$ 2/10 = 0.2 $]
#v(20pt)
#only("2-")[💡 Das Dezimalzeichen steht vor der letzten Ziffer]
#only("1")[
#voiceover("Nun können wir zwei Zehntel leicht in eine Dezimalzahl umwandeln. In Dezimalform ist es null Komma zwei.")
]
#only("2")[
#voiceover("Denke daran, dass wir beim Umwandeln eines Bruchs mit einem Nenner von 10 in eine Dezimalzahl das Dezimalzeichen einfach vor die letzte Ziffer des Zählers setzen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wir haben mit $1/5$ begonnen 📊]
#v(20pt)
#only("2-")[- Multipliziert mit $2/2$ um $2/10$ zu erhalten ✖️]
#v(20pt)
#only("3-")[- Umgewandelt $2/10$ in $0.2$ 🔢]
#only("1")[
#voiceover("Zusammenfassend haben wir mit dem Bruch ein Fünftel begonnen.")
]
#only("2")[
#voiceover("Wir haben sowohl den Zähler als auch den Nenner mit 2 multipliziert, um zwei Zehntel zu erhalten.")
]
#only("3")[
#voiceover("Schließlich haben wir zwei Zehntel in null Komma zwei umgewandelt. Und das ist unsere Antwort!")
]
]