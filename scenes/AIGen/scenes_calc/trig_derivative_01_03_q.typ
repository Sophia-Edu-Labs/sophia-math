#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Hier ist deine nächste Aufgabe:")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = 3 cos(x) $]]
#only("2")[
  #voiceover("Bestimme die Ableitung der Funktion f von x gleich drei mal Kosinus von x.")
]
]

#questionDef(
  questionText: "Bestimme die Ableitung der Funktion $f(x) = 3 cos(x)$.",
  answerOptions: ("Die Ableitung ist $f'(x) = -3 sin(x)$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)