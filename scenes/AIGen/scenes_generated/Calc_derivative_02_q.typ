#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #only("1")[
    #voiceover("Wir haben die Funktion .")
  ]
  Gesucht: Ableitung der Funktion
  #v(40pt)
  #only("2-")[
    #text()[$ f(x) = 3x^3 + 2x^5 - 3x $]
  ]
  #only("2")[
    #voiceover("f von x gleich drei mal x hoch drei plus zwei mal x hoch fünf minus drei mal x gegeben. Was ist die Ableitung dieser Funktion?")
  ]
]


#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = 3x^3 + 2x^5 -3x$?",
  // use latex!
  answerOptions: ("Die Ableitung ist $f'(x)=9x^2 + 10x^4 -3$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)