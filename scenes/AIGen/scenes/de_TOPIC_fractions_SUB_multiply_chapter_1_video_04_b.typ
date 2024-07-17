#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Brüche multiplizieren]

#v(40pt)

#only("2-")[#text()[$ (2/3) dot (3/4) $]]
// Die Multiplikation von Brüchen wird ab Folie 2 gezeigt

#only("2")[
#voiceover("Wir beginnen mit den Brüchen zwei Drittel und drei Viertel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt Lösung]

#v(40pt)

#only("1-")[- Zähler multiplizieren: $2 dot 3$]
#v(20pt)
#only("2-")[- Nenner multiplizieren: $3 dot 4$]

#only("1")[
#voiceover("Zuerst multiplizieren wir die Zähler: zwei mal drei.")
]

#only("2")[
#voiceover("Als nächstes multiplizieren wir die Nenner: drei mal vier.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Ergebnis]

#v(40pt)

#only("1-")[$ (2 dot 3) / (3 dot 4) = 6/12 $]
#v(20pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Vereinfachen]]]
#v(20pt)
#only("3-")[$ 6/12 = 1/2 $]

#only("1")[
#voiceover("Also erhalten wir sechs Zwölftel.")
]

#only("2")[
#voiceover("Jetzt vereinfachen wir sechs Zwölftel.")
]

#only("3")[
#voiceover("Und wir erhalten ein Halb als endgültige Antwort.")
]
]