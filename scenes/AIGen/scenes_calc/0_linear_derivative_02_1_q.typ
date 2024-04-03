#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Bestimme jetzt die Ableitung der Funktion")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = x^3 + x^5 $]]
#only("2")[
  #voiceover("f von x gleich x hoch drei plus x hoch fünf!")
]
]

#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = x^3 + x^5$?",
  answerOptions: ("Die Ableitung ist $f'(x) = 3x^2 + 5x^4$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)