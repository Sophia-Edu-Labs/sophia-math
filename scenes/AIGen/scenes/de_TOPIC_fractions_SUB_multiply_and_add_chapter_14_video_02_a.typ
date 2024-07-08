#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche multiplizieren]
#v(40pt)

#only("1-")[
$7/9 × 2/3 = ?$
]

#v(20pt)

#only("2-")[
$7/9 × 2/3 = (7 × 2) / (9 × 3)$
]

#v(20pt)

#only("3-")[
$= 14 / 27$
]

#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen.")
]

#only("2")[
#voiceover("Um Brüche zu multiplizieren, multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also multiplizieren wir 7 mit 2 im Zähler und 9 mit 3 im Nenner.")
]

#only("3")[
#voiceover("Das ergibt 14 durch 27. Und das ist unsere endgültige Antwort! Beachte, dass wir diesen Bruch nicht weiter vereinfachen müssen, da 14 und 27 keine gemeinsamen Faktoren außer 1 haben.")
]
]