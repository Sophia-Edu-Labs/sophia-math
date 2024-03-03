#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #voiceover("Was ist die Stammfunktion")
  Stammfunktion von
  #v(40pt)
  #only("1-")[$ f(x) = 3e^((-2x)) + 1/(2x) $]
  #only("1")[  
    #voiceover("der Funktion f von x ist gleich dreimal e hoch minus zwei mal x plus eins geteilt durch zwei mal x.")
  ]
]


#questionDef(
  questionText: "Was ist die Stammfunktion der Funktion $f(x)=3 e^{-2x}+\frac{1}{2x}$?",
  // use latex!
  answerOptions: ("Die Stammfunktion ist $F(x)=-3/2 e^{-2x}+1/2 ln(x)+c$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)