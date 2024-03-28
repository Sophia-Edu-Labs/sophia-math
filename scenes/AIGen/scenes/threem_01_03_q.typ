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
#voiceover("Hier ist eine anspruchsvollere 3 M Aufgabe für dich:")
]

#only("2-")[Wie oft muss man mindestens einen fairen sechsseitigen Würfel werfen, damit man mit einer Wahrscheinlichkeit von mindestens 99% mindestens eine durch drei teilbare Zahl würfelt?]

#only("2")[
#voiceover("Wie oft muss man mindestens einen fairen sechsseitigen Würfel werfen, damit man mit einer Wahrscheinlichkeit von mindestens 99% mindestens eine durch drei teilbare Zahl würfelt?")
]

#v(40pt)

#only("4-")[
- Identifiziere die günstigen Ereignisse 
- Formuliere die Wahrscheinlichkeit als Ungleichung
- Betrachte die Gegenwahrscheinlichkeit
- Drücke die Gegenwahrscheinlichkeit aus
- Löse die Ungleichung nach der Anzahl der Würfe auf
]

#only("4")[
#voiceover("Hier ein paar Tipps: Identifiziere zunächst die günstigen Ereignisse, also die durch drei teilbaren Zahlen auf dem Würfel. Formuliere dann die Wahrscheinlichkeit als Ungleichung. Betrachte als nächstes die Gegenwahrscheinlichkeit und drücke diese aus. Zum Schluss löse die Ungleichung nach der Anzahl der Würfe auf.")
]
]

#questionDef(
  questionText: "Wie oft muss man mindestens einen fairen sechsseitigen Würfel werfen, damit man mit einer Wahrscheinlichkeit von mindestens $99\%$ mindestens eine durch $3$ teilbare Zahl würfelt?",
  // use latex!
  answerOptions: ("$12 mal", "$0$$ mal"),
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
