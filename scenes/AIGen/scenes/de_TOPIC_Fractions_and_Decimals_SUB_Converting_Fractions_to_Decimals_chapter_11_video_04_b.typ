#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Leider ist das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir 19/5 in eine Dezimalzahl umwandeln.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von 19/5 in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$19/5$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch neunzehn Fünftel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multipliziere mit 2/2]
#v(40pt)
#only("1-")[$ 19/5 = 19/5 × 2/2 $]
#v(20pt)
#only("2-")[$ = (19 × 2) / (5 × 2) $]
#v(20pt)
#only("3-")[$ = 38/10 $]

#only("1")[
#voiceover("Unser erster Schritt ist, sowohl den Zähler als auch den Nenner mit 2 zu multiplizieren. Das ändert den Wert des Bruchs nicht, aber es vereinfacht unsere Berechnung.")
]
#only("2")[
#voiceover("Neunzehn mal zwei im Zähler ergibt achtunddreißig, und fünf mal zwei im Nenner ergibt zehn.")
]
#only("3")[
#voiceover("Jetzt haben wir also achtunddreißig Zehntel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Dividiere]
#v(40pt)
#only("1-")[$ 38 ÷ 10 = 3.8 $]
#v(20pt)
#only("2-")[💡 Das Dezimalzeichen steht vor der letzten Ziffer]

#only("1")[
#voiceover("Jetzt teilen wir einfach achtunddreißig durch zehn. Achtunddreißig geteilt durch zehn ergibt drei Komma acht.")
]
#only("2")[
#voiceover("Beachte, dass wir beim Teilen durch zehn das Dezimalzeichen einfach um eine Stelle nach links verschieben. Das Dezimalzeichen steht also vor der letzten Ziffer von achtunddreißig.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[$ 19/5 = 3.8 $]
#v(20pt)
#only("2-")[✅ Dezimaldarstellung: 3.8]

#only("1")[
#voiceover("Daher ist neunzehn Fünftel als Dezimalzahl drei Komma acht.")
]
#only("2")[
#voiceover("Gut gemacht! Du hast erfolgreich einen Bruch in eine Dezimalzahl umgewandelt, indem du sowohl den Zähler als auch den Nenner mit 2 multipliziert hast, um 38/10 zu erhalten, und dann das Dezimalzeichen vor die letzte Ziffer gesetzt hast.")
]
]