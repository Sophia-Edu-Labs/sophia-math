#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Betrachte die Funktion")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = (sin(x))^2 $]]
#only("2")[
  #voiceover("f von x gleich Sinus von x Quadrat. Benutze die Kettenregel, um die Ableitung zu bestimmen.")
]
]

#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = (sin(x))^2$?",
  answerOptions: ("Die Ableitung ist $f'(x) = 2 dot sin(x) dot cos(x)$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)