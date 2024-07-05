#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Skalarmultiplikation von Matrizen]
#v(40pt)

#only("1-")[Gegeben: $A = mat(1, 0; 0, 1)$ und Skalar $k = 5$]
#v(20pt)

#only("2-")[Schritt 1: Multipliziere jedes Element mit $k$]
#v(10pt)

#only("3-")[$ k dot A = 5 dot mat(1, 0; 0, 1) = mat(5 dot 1, 5 dot 0; 5 dot 0, 5 dot 1) $]
#v(20pt)

#only("4-")[Schritt 2: Vereinfache]
#v(10pt)

#only("5-")[$ = mat(5, 0; 0, 5) $]

#only("1")[
#voiceover("Leider war das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen.")
]

#only("2")[
#voiceover("Wir beginnen mit der Identitätsmatrix A und müssen sie mit dem Skalar 5 multiplizieren. Denke daran, dass wir bei der Multiplikation einer Matrix mit einem Skalar jedes Element der Matrix mit diesem Skalar multiplizieren.")
]

#only("3")[
#voiceover("Also multiplizieren wir jedes Element der Matrix mit 5. Das Element oben links wird zu 5 mal 1, was 5 ergibt. Die Elemente oben rechts und unten links werden zu 5 mal 0, was immer noch 0 ist. Und das Element unten rechts wird zu 5 mal 1, was 5 ergibt.")
]

#only("4")[
#voiceover("Nun lass uns unser Ergebnis vereinfachen.")
]

#only("5")[
#voiceover("Nach der Vereinfachung erhalten wir eine Matrix mit 5 in den Positionen oben links und unten rechts und 0 in den anderen Positionen. Dies ist unsere endgültige Antwort: eine 2x2-Matrix mit 5 auf der Hauptdiagonale und 0 an den anderen Stellen.")
]
]