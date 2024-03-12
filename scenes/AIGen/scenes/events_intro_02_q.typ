#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 26pt, weight: "bold")[⚅ Zweimaliger Würfelwurf ⚀]
#v(40pt)
#only("1")[#voiceover("Betrachte einen zweimaligen Würfelwurf mit einem fairen Würfel.")]
#v(20pt)
#only("2-")[
Welche der folgenden Optionen ist #text(weight: "bold")[KEIN] Ergebnis?
]
#only("2")[#voiceover("Welche der folgenden Optionen ist KEIN Ergebnis?")]
#v(40pt)
#only("3-")[
- Beide Würfe ⚅
]
#only("3")[#voiceover("Ist es die Option, dass beide Würfe sechser sind?")]
#v(10pt)
#only("4-")[
- 1. Wurf ⚀, 2. Wurf ⚁
]
#only("4")[#voiceover("Oder die Option, dass der erste Wurf eine eins, der 2. eine 2 ergibt?")]
#v(10pt)
#only("5-")[
- Beide Würfe gerade Augenzahlen
]
#only("5")[#voiceover("Oder ist es die Option , dass beide Würfe gerade Augenzahlen ergeben?")]
#v(10pt)
#only("6-")[
- 2. Wurf ⚃, 1. Wurf ⚁
]
#only("6")[#voiceover("Oder, letzte Möglichkeit, die Option dass der zweite Wurf eine vier, und der 1. Wurf eine 2 ergibt?")]
]

#questionDef(
questionText: "Welche Option ist KEIN Ergebnis eines zweimaligen Würfelwurfs?",
answerOptions: ("Beides Sechser", "$1$. Wurf $1$, $2$. Wurf $2$", "Nur gerade Augenzahlen", "$2$. Wurf $4$, $1$. Wurf $2$"),
correctAnswerIndex: 2
)