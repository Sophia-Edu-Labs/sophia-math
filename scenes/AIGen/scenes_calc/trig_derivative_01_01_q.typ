#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Üben wir das mal")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = 2 sin(x) $]]
#only("2")[
  #voiceover("Bestimme ist die Ableitung der Funktion f von x gleich zwei mal Sinus von x.")
]
]

#questionDef(
  questionText: "Bestimme die Ableitung der Funktion $f(x) = 2 sin(x)$.",
  answerOptions: ("Die Ableitung ist $f'(x) = 2 cos(x)$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)