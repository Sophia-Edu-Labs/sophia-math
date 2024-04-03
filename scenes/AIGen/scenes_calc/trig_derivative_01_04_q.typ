#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Betrachte nun die Funktion")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = sin(x) + 2 cos(x) $]]
#only("2")[
  #voiceover("f von x gleich Sinus von x plus zwei mal Kosinus von x. Bestimme die Ableitung von f.")
]
]

#questionDef(
  questionText: "Bestimme die Ableitung der Funktion $f(x) = sin(x) + 2 cos(x)$.",
  answerOptions: ("Die Ableitung ist $f'(x) = cos(x) - 2 sin(x)$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)