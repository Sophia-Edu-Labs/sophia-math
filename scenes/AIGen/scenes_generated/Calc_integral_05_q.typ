#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Was ist die Stammfunktion")
]
Finde die Stammfunktion von
#v(40pt)
#only("2-")[
  #text()[$ f(x) = 5e^(3x) - (5)/(x^4) $]
]

#only("2")[
  #voiceover("der Funktion f von x gleich fünf mal e hoch drei x minus fünf geteilt durch x hoch vier.")
]
]


#questionDef(
  questionText: "Was ist die Stammfunktion der Funktion $f(x)=5 e^{3x}-\frac{5}{x^4}$?",
  // use latex!
  answerOptions: ("Die Stammfunktion ist $F(x)= 5/3 e^{3x}+5/3*(1/x^3)+c$, oder $F(x)= 5/3 (e^{3x}+(1/x^3))+c$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)