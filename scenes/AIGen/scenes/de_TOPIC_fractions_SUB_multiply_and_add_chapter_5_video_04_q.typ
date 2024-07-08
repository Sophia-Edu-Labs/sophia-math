#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachte den folgenden Bruch:")
  ]

  #text(size: 30pt, weight: "bold")[Denominator ändern]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[$ 5/6 $]
  ]

  #only("2")[
    #voiceover("Wir haben den Bruch fünf Sechstel.")
  ]

  #v(40pt)

  #only("3-")[
    #text(size: 20pt)[Ändere diesen Bruch in einen äquivalenten Bruch mit dem Nenner 12.]
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch in einen äquivalenten Bruch mit dem Nenner zwölf zu ändern.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Ändere $\frac{5}{6}$ in einen Bruch mit dem Nenner $12$.", 
answerOptions: ("$\frac{10}{12}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)