#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrixmultiplikation]
#v(40pt)

#only("1-")[Gegebene Matrizen:]
#v(10pt)
#only("1-")[A = #text(fill: blue)[$mat(1, 2, 3; 4, 5, 6)$]]
#v(10pt)
#only("1-")[B = #text(fill: green)[$mat(1, 4; 2, 5; 3, 6)$]]

#only("1")[
#voiceover("Keine Sorge, lass uns die Lösung Schritt für Schritt durchgehen. Wir haben zwei Matrizen gegeben: A, eine 2x3-Matrix, und B, eine 3x2-Matrix.")
]

#only("2-")[Ergebnis: C = A × B = #text(fill: red)[$mat(14, 32; 32, 77)$]]

#only("2")[
#voiceover("Wenn wir diese Matrizen multiplizieren, erhalten wir als Ergebnis eine 2x2-Matrix. Lass uns sehen, wie wir zu diesem Ergebnis kommen.")
]

#only("3-")[Schritt 1: Multipliziere Zeile 1 von A mit den Spalten von B]
#v(10pt)
#only("3-")[#text(fill: purple)[$c_(11) = 1 dot 1 + 2 dot 2 + 3 dot 3 = 1 + 4 + 9 = 14$]]
#v(5pt)
#only("3-")[#text(fill: purple)[$c_(12) = 1 dot 4 + 2 dot 5 + 3 dot 6 = 4 + 10 + 18 = 32$]]

#only("3")[
#voiceover("Lass uns mit der ersten Zeile von A beginnen und sie mit jeder Spalte von B multiplizieren. Für c11 erhalten wir 1 mal 1, plus 2 mal 2, plus 3 mal 3, was 14 ergibt. Für c12 erhalten wir 1 mal 4, plus 2 mal 5, plus 3 mal 6, was 32 ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrixmultiplikation]
#v(40pt)

#only("1-")[Schritt 2: Multipliziere Zeile 2 von A mit den Spalten von B]
#v(10pt)
#only("1-")[#text(fill: orange)[$c_(21) = 4 dot 1 + 5 dot 2 + 6 dot 3 = 4 + 10 + 18 = 32$]]
#v(5pt)
#only("1-")[#text(fill: orange)[$c_(22) = 4 dot 4 + 5 dot 5 + 6 dot 6 = 16 + 25 + 36 = 77$]]

#only("1")[
#voiceover("Nun machen wir dasselbe mit der zweiten Zeile von A. Für c21 erhalten wir 4 mal 1, plus 5 mal 2, plus 6 mal 3, was 32 ergibt. Für c22 erhalten wir 4 mal 4, plus 5 mal 5, plus 6 mal 6, was 77 ergibt.")
]

#only("2-")[Endergebnis:]
#v(10pt)
#only("2-")[C = #text(fill: red)[$mat(14, 32; 32, 77)$]]

#only("2")[
#voiceover("Und da haben wir es! Unser Endergebnis ist eine 2x2-Matrix mit den Elementen 14 und 32 in der ersten Zeile und 32 und 77 in der zweiten Zeile. Dies zeigt, wie die Matrixmultiplikation für nicht-quadratische Matrizen funktioniert, wobei die Anzahl der Spalten der ersten Matrix der Anzahl der Zeilen der zweiten Matrix entsprechen muss.")
]
]