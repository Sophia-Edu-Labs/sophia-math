#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Skalarmultiplikation von Matrizen]
#v(40pt)

#only("1-")[Gegebene Matrix: $A = mat(2, 3; 4, 5)$]
#v(20pt)
#only("2-")[Skalar: $k = 2$]
#v(20pt)
#only("3-")[Schritt 1: Multipliziere jedes Element mit $k$]
#v(20pt)
#only("4-")[Schritt 2: $2 dot mat(2, 3; 4, 5) = mat(2 dot 2, 2 dot 3; 2 dot 4, 2 dot 5)$]
#v(20pt)
#only("5-")[Endergebnis: $mat(4, 6; 8, 10)$]

#only("1")[
#voiceover("Großartig! Du hast dieses Problem korrekt gelöst. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit unserer gegebenen Matrix A.")
]

#only("2")[
#voiceover("Wir sollen diese Matrix mit dem Skalar 2 multiplizieren.")
]

#only("3")[
#voiceover("Um eine Skalarmultiplikation an einer Matrix durchzuführen, multiplizieren wir jedes Element der Matrix mit dem Skalar.")
]

#only("4")[
#voiceover("Also multiplizieren wir jedes Element unserer Matrix mit 2. Lass uns das Schritt für Schritt machen: 2 mal 2 ist 4, 2 mal 3 ist 6, 2 mal 4 ist 8, und 2 mal 5 ist 10.")
]

#only("5")[
#voiceover("Das gibt uns unser Endergebnis: eine Matrix mit 4 und 6 in der ersten Zeile und 8 und 10 in der zweiten Zeile. Gut gemacht beim Lösen dieses Problems!")
]
]