#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit beim Lösen der Aufgabe! Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Brüche multiplizieren]

#v(40pt)

#only("2-")[#text()[$5 dot 3/4$]]
// Der anfängliche Multiplikationsausdruck wird ab Folie 2 angezeigt

#only("2")[
#voiceover("Wir beginnen mit dem Ausdruck 5 mal 3 durch 4.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt Lösung]

#v(40pt)

#only("1-")[- Multipliziere den Zähler mit der ganzen Zahl]
// Der erste Schritt wird ab Folie 1 angezeigt

#only("2-")[- Behalte den Nenner bei]
// Der zweite Schritt wird ab Folie 2 angezeigt

#v(20pt)

#only("3-")[$5 dot 3/4 = 15/4$]
// Das Endergebnis wird ab Folie 3 angezeigt

#only("1")[
#voiceover("Zuerst multiplizieren wir den Zähler mit der ganzen Zahl. In diesem Fall multiplizieren wir 5 mit 3.")
]

#only("2")[
#voiceover("Als nächstes behalten wir den Nenner bei, der 4 ist.")
]

#only("3")[
#voiceover("Also, 5 mal 3 durch 4 ergibt 15 durch 4.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]

#v(40pt)

#only("1-")[$5 dot 3/4 = 15/4$]
// Die endgültige Antwort wird ab Folie 1 angezeigt

#only("1")[
#voiceover("Daher ist die endgültige Antwort 15 durch 4. Gut gemacht!")
]
]