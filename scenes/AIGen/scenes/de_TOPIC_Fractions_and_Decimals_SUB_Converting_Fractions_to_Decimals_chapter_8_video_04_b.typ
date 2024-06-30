#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Leider war das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir sieben Zwanzigstel in eine Dezimalzahl umwandeln.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von $7/20$ in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$7/20$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch sieben Zwanzigstel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Ansatz: Multiplizieren mit $5/5$]
#v(40pt)
#only("1-")[- Zähler und Nenner mit 5 multiplizieren 📊]
#v(20pt)
#only("2-")[- Dies ändert den Wert des Bruchs nicht ✅]
#only("1")[
#voiceover("Unser Ansatz wird sein, sowohl den Zähler als auch den Nenner mit 5 zu multiplizieren.")
]
#only("2")[
#voiceover("Dies ändert den Wert des Bruchs nicht, da wir mit fünf Fünfteln multiplizieren, was eins ergibt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multiplikation]
#v(40pt)
#only("1-")[$ 7/20 = (7 × 5)/(20 × 5) $]
#v(20pt)
#only("2-")[$ = 35/100 $]
#only("1")[
#voiceover("Lass uns sowohl den Zähler als auch den Nenner mit 5 multiplizieren. Sieben mal fünf ist fünfunddreißig, und zwanzig mal fünf ist hundert.")
]
#only("2")[
#voiceover("Unser neuer Bruch ist also fünfunddreißig Hundertstel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Dezimalumwandlung]
#v(40pt)
#only("1-")[$ 35/100 = 0.35 $]
#v(20pt)
#only("2-")[💡 Das Dezimalkomma steht vor der zweitletzten Ziffer]
#only("1")[
#voiceover("Nun, fünfunddreißig Hundertstel lassen sich leicht in eine Dezimalzahl umwandeln. Es ist einfach null Komma drei fünf.")
]
#only("2")[
#voiceover("Ein hilfreicher Tipp: Wenn du einen Bruch mit Hundert hast, steht das Dezimalkomma in der Antwort vor der zweitletzten Ziffer.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wir haben mit $7/20$ begonnen 📊]
#v(20pt)
#only("2-")[- Multipliziert mit $5/5$ um $35/100$ zu erhalten ✖️]
#v(20pt)
#only("3-")[- In Dezimalzahl umgewandelt: $0.35$ 🎉]
#only("1")[
#voiceover("Zusammenfassend haben wir mit sieben Zwanzigstel begonnen.")
]
#only("2")[
#voiceover("Wir haben sowohl den Zähler als auch den Nenner mit 5 multipliziert, um fünfunddreißig Hundertstel zu erhalten.")
]
#only("3")[
#voiceover("Schließlich haben wir dies in die Dezimalzahl null Komma drei fünf umgewandelt. Gut gemacht beim Lösen dieses Problems!")
]
]