#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung von $(27^(1/3))^2$]
#v(40pt)
#only("1-")[- Großartig gemacht! 🎉]
#v(20pt)
#only("2-")[- Lass uns das Schritt für Schritt lösen 📝]
#only("1")[
#voiceover("Das ist richtig, großartig gemacht! Du hast den Ausdruck korrekt vereinfacht.")
]
#only("2")[
#voiceover("Jetzt lass uns die Lösung Schritt für Schritt durchgehen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Anwenden der Potenzregel]
#v(40pt)
#only("1-")[- $(a^(m/n))^p = a^((m p)/n)$]
#v(20pt)
#only("2-")[- $(27^(1/3))^2 = 27^((1*2)/3) = 27^(2/3)$]
#only("1")[
#voiceover("Zuerst wenden wir die Potenzregel für rationale Exponenten an. Diese Regel besagt, dass a hoch m durch n, alles hoch p, gleich a hoch m mal p durch n ist.")
]
#only("2")[
#voiceover("In unserem Fall ist a 27, m ist 1, n ist 3 und p ist 2. Also erhalten wir 27 hoch 1 mal 2 durch 3, was sich zu 27 hoch 2 durch 3 vereinfacht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Den Ausdruck auswerten]
#v(40pt)
#only("1-")[- $27^(2/3) = root(3, 27^2) = root(3, 729) = 9$]
#v(20pt)
#only("2-")[- $27^(1/3) = root(3, 27) = 3$]
#v(20pt)
#only("3-")[- $3^2 = 9$]
#only("1")[
#voiceover("Als nächstes werten wir den Ausdruck 27 hoch 2 durch 3 aus. Dies entspricht der Kubikwurzel von 27 zum Quadrat. 27 zum Quadrat ist 729, also suchen wir die Kubikwurzel von 729.")
]
#only("2")[
#voiceover("Wir wissen, dass die Kubikwurzel von 27 gleich 3 ist, weil 3 hoch 3 gleich 27 ist.")
]
#only("3")[
#voiceover("Und 3 zum Quadrat ist gleich 9.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[- $(27^(1/3))^2 = 9$ ✅]
#only("1")[
#voiceover("Daher ist unsere endgültige Antwort 9. Großartige Arbeit!")
]
]