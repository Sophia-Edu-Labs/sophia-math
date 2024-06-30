#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit! Du hast die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir ein Viertel in eine Dezimalzahl umwandeln.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von $1/4$ in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$1/4$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch ein Viertel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Methode: Multiplizieren mit $25/25$]
#v(40pt)
#only("1-")[- Zähler und Nenner mit 25 multiplizieren ✖️]
#v(20pt)
#only("2-")[- Dies ändert den Wert des Bruchs nicht 🔄]
#only("1")[
#voiceover("Unsere Methode besteht darin, sowohl den Zähler als auch den Nenner mit 25 zu multiplizieren.")
]
#only("2")[
#voiceover("Dies ändert den Wert des Bruchs nicht, da wir mit 1 in Form von 25 durch 25 multiplizieren.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[$ 1/4 = (1 × 25) / (4 × 25) $]
#v(20pt)
#only("2-")[$ = 25/100 $]
#v(20pt)
#only("3-")[$ = 0,25 $]

#only("1")[
#voiceover("Lass uns anfangen. Wir haben ein Viertel. Wir multiplizieren sowohl den Zähler als auch den Nenner mit 25.")
]
#only("2")[
#voiceover("Das ergibt 25 durch 100.")
]
#only("3")[
#voiceover("Nun, 25 durch 100 entspricht 0,25 in Dezimalform.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Das Dezimal verstehen]
#v(40pt)
#only("1-")[$ 0,25 = 25/100 = 1/4 $]
#v(20pt)
#only("2-")[🔢 Der Dezimalpunkt steht vor der zweitletzten Ziffer]

#only("1")[
#voiceover("Lass uns verstehen, was 0,25 bedeutet. Es ist dasselbe wie 25 Hundertstel, was einem Viertel entspricht.")
]
#only("2")[
#voiceover("Beachte, dass der Dezimalpunkt vor der zweitletzten Ziffer in 25 steht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wir haben $1/4$ in $0,25$ umgewandelt 🔄]
#v(20pt)
#only("2-")[- Wir haben mit $25/25$ multipliziert, um $25/100$ zu erhalten ✖️]
#v(20pt)
#only("3-")[- $25/100 = 0,25$ in Dezimalform 🔢]
#only("1")[
#voiceover("Zusammenfassend haben wir ein Viertel in 0,25 umgewandelt.")
]
#only("2")[
#voiceover("Wir haben dies getan, indem wir sowohl den Zähler als auch den Nenner mit 25 multipliziert haben, was uns 25 durch 100 ergibt.")
]
#only("3")[
#voiceover("Und 25 durch 100 entspricht 0,25 in Dezimalform. Großartige Arbeit beim Verstehen dieser Umwandlung!")
]
]