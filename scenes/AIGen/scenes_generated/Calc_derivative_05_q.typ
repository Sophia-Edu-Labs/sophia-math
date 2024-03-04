#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #only("1")[
    #voiceover("Wir betrachten die Funktion f von x gleich")
  ]
  Gesucht: Ableitung der Funktion
  #v(40pt)
  #only("2-")[
    #text()[$ f(x) =1/2 x^2 + "ln"(x) $]
  ]
  #only("2")[
    #voiceover(" ein halb mal x Quadrat plus den natürliche Logarithmus von x. Was ist die Ableitung dieser Funktion?")
  ]
]


#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = \frac12 x^2 + \ln(x)$?",
  // use latex!
  answerOptions: ("Die Ableitung ist $f'(x)=x+\frac{1}{x}$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)