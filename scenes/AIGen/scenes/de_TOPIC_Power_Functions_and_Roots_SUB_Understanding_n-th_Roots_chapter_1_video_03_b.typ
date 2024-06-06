#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Notation]
#v(40pt)
#only("1-")[- $root(n, a)$: n-te Wurzel von a]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Hier ist ein Video, das die richtige Notation für die 6. Wurzel von 64 erklärt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[- $root(6, 64)$]
#only("1")[
#voiceover("Also, die 6. Wurzel von 64 wird als Wurzel von 6, 64 geschrieben. Das bedeutet einen Wert, der, wenn er mit 6 potenziert wird, 64 ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- n-te Wurzel Notation: $root(n, a)$ 📝]
#v(20pt)
#only("2-")[- Beispiel: $root(6, 64)$ ✅]
#only("1")[
#voiceover("Zusammenfassend, die Notation für n-te Wurzeln ist Wurzel von n, a, wobei n die Wurzel und a die Zahl ist.")
]
#only("2")[
#voiceover("In diesem Fall haben wir die 6. Wurzel von 64 als Wurzel von 6, 64 geschrieben. Gut gemacht!")
]
]