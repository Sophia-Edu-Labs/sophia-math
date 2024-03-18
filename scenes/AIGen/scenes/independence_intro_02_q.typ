  #import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Stochastische Unabhängigkeit]
#v(40pt)
#only("2-")[
- A: Es regnet heute
- B: Heute scheint die Sonne
]
#v(20pt)
#only("3-")[
- A: Es ist Sonntag
- B: Heute scheint die Sonne
]
#v(20pt)
#only("4-")[
- A: Es ist Winter
- B: Heute scheint die Sonne
]
#v(40pt)
#only("4-")[Welches Paar ist am ehesten #text(weight: "bold")[unabhängig]?]
#only("1")[
#voiceover("Betrachten wir die folgenden drei Paare von Ereignissen und überlegen wir, welches davon am ehesten stochastisch unabhängig ist. Zur Erinnerung: Zwei Ereignisse sind unabhängig, wenn das Eintreten des einen Ereignisses keinen Einfluss auf die Wahrscheinlichkeit des anderen Ereignisses hat.")
]
#only("2")[
#voiceover("Das erste Paar: A - es regnet heute, und B - heute scheint die Sonne. Was denkst du, beeinflusst hier das eine Ereignis die Wahrscheinlichkeit des anderen?")
]
#only("3")[
#voiceover("Als nächstes: A - es ist Sonntag, und wieder B - heute scheint die Sonne. Hängt die Wahrscheinlichkeit für Sonnenschein davon ab, dass heute Sonntag ist?")
]
#only("4")[
#voiceover("Und das letzte Paar: A - es ist Winter, und nochmal B - heute scheint die Sonne. Hat die Jahreszeit einen Einfluss darauf, wie wahrscheinlich es ist, dass die Sonne scheint?")
]
#only("5")[
#voiceover("Welches dieser drei Paare, glaubst du, erfüllt die Kriterien für stochastische Unabhängigkeit?")
]
]
#questionDef(
questionText: "Welches Ereignispaar ist stochastisch unabhängig?",
answerOptions: ("A: Regen heute, B: Sonnenschein heute", "A: Es ist Sonntag und B: Sonnenschein heute", "A: Es ist Winter und B: Sonnenschein heute"),
correctAnswerIndex: 1,
)
