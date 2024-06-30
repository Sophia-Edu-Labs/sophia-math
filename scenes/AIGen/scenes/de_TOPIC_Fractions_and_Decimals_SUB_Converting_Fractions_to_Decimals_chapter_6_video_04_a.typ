#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit! Du hast die Dezimaldarstellung von zwei Fünfteln korrekt identifiziert. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir zu diesem Ergebnis kommen.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von $2/5$ in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$2/5$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch zwei Fünftel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Ansatz: Multiplizieren mit $2/2$]
#v(40pt)
#only("1-")[- Zähler und Nenner mit 2 multiplizieren ✖️]
#v(20pt)
#only("2-")[- Dies ändert den Wert des Bruchs nicht 🔄]
#only("1")[
#voiceover("Unser Ansatz wird sein, sowohl den Zähler als auch den Nenner mit 2 zu multiplizieren.")
]
#only("2")[
#voiceover("Dies ändert den Wert des Bruchs nicht, aber es wird die Umwandlung in eine Dezimalzahl erleichtern.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multiplikation]
#v(40pt)
#only("1-")[$2/5 = (2 \cdot 2)/(5 \cdot 2)$]
#v(20pt)
#only("2-")[$= 4/10$]
#only("1")[
#voiceover("Lass uns sowohl den Zähler als auch den Nenner mit 2 multiplizieren. Zwei mal zwei im Zähler ergibt vier.")
]
#only("2")[
#voiceover("Und fünf mal zwei im Nenner ergibt zehn. Also sind zwei Fünftel gleich vier Zehntel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Umwandlung in eine Dezimalzahl]
#v(40pt)
#only("1-")[$4/10 = 0,4$]
#v(20pt)
#only("2-")[💡 Das Komma steht vor der letzten Ziffer]
#only("1")[
#voiceover("Nun, vier Zehntel lassen sich leicht in eine Dezimalzahl umwandeln. Es ist einfach null Komma vier.")
]
#only("2")[
#voiceover("Denke daran, wenn wir einen Bruch über 10 haben, steht das Komma vor der letzten Ziffer.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wir haben mit $2/5$ begonnen 📊]
#v(20pt)
#only("2-")[- Multipliziert mit $2/2$ und $4/10$ erhalten 🔢]
#v(20pt)
#only("3-")[- $4/10$ in $0,4$ umgewandelt 🎉]
#only("1")[
#voiceover("Zusammenfassend haben wir mit dem Bruch zwei Fünftel begonnen.")
]
#only("2")[
#voiceover("Wir haben sowohl den Zähler als auch den Nenner mit 2 multipliziert und vier Zehntel erhalten.")
]
#only("3")[
#voiceover("Schließlich haben wir vier Zehntel in seine Dezimalform umgewandelt, was null Komma vier ist. Großartige Arbeit beim Lösen dieses Problems!")
]
]