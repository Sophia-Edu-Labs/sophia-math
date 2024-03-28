#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]
#set text(lang: "de")

#slide()[
#text(size: 30pt, weight: "bold")[3 M Aufgabe]
#v(40pt)
#only("1")[
#voiceover("Hier ist eine 3 M Aufgabe für dich:")
]

#only("2-")[Wie oft muss man mindestens einen fairen sechsseitigen Würfel werfen, damit man mit einer Wahrscheinlichkeit von mindestens 95% mindestens eine Drei würfelt?]

#only("2")[
#voiceover("Wie oft muss man mindestens einen fairen sechsseitigen Würfel werfen, damit man mit einer Wahrscheinlichkeit von mindestens 95% mindestens eine Drei würfelt?")
]

#v(40pt)

#only("4-")[
- Formuliere die Wahrscheinlichkeit als Ungleichung
- Betrachte die Gegenwahrscheinlichkeit
- Drücke die Gegenwahrscheinlichkeit aus
- Löse die Ungleichung nach der Anzahl der Würfe auf
]

#only("4")[
#voiceover("Hier noch ein paar Tipps: Formuliere zunächst die Wahrscheinlichkeit als Ungleichung. Dann betrachte die Gegenwahrscheinlichkeit und drücke diese aus. Zum Schluss löse die Ungleichung nach der Anzahl der Würfe auf.")

]
]


#questionDef(
  questionText: "Wie oft muss man mindestens einen fairen sechsseitigen Würfel werfen, damit man mit einer Wahrscheinlichkeit von mindestens $95\%$ mindestens eine Drei würfelt?",
  // use latex!
  answerOptions: ("$11$ mal", "$0$ mal"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$\key{a}$ mal"),
      answerOptionsTypes: (
        "a": "number",
      )
  ),
)
