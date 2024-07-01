#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Vektoraddition]
#v(40pt)

#only("1-")[$(5, 7, 2) + (2, -3, -1) = (7, 4, 1)$]

#v(20pt)

#only("2-")[- Entsprechende Komponenten addieren:]
#v(10pt)
#only("3-")[  • $5 + 2 = 7$]
#v(10pt)
#only("4-")[  • $7 + (-3) = 4$]
#v(10pt)
#only("5-")[  • $2 + (-1) = 1$]

#v(20pt)

#only("6-")[Ergebnis: $(7, 4, 1)$ 🎉]

#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen.")
]

#only("2")[
#voiceover("Um Vektoren zu addieren, addieren wir ihre entsprechenden Komponenten. Lass uns das Schritt für Schritt machen:")
]

#only("3")[
#voiceover("Zuerst addieren wir die x-Komponenten: fünf plus zwei ergibt sieben.")
]

#only("4")[
#voiceover("Als nächstes addieren wir die y-Komponenten: sieben plus minus drei ergibt vier.")
]

#only("5")[
#voiceover("Schließlich addieren wir die z-Komponenten: zwei plus minus eins ergibt eins.")
]

#only("6")[
#voiceover("Wenn wir alles zusammenfügen, erhalten wir den resultierenden Vektor (7, 4, 1). Das ist tatsächlich die korrekte Summe der beiden gegebenen Vektoren!")
]
]