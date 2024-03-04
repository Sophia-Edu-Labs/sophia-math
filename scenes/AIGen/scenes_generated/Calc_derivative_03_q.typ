#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #voiceover("Zuerst bestimmen wir die Ableitung der Funktion")
  Gesucht: Ableitung der Funktion
  #v(40pt)
  #only("2-")[#text()[$ f(x) = 1/4 x^4 + sin(x) $]]
  #only("2")[  
    #voiceover("der Funktion f von x gleich ein Viertel x hoch vier plus der Sinus von x.")
  ]
]


#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = \frac14 x^4 + \sin(x)$?",
  // use latex!
  answerOptions: ("Die Ableitung ist $f'(x)=x^3+cos(x)$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)