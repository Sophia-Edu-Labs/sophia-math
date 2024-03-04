#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Betrachte")
]
Berechne eine Stammfunktion von
#v(40pt)
#only("2-")[#text()[$ f(x) = 4x^3 - 6x + 2e^x $]]
#only("2")[
  #voiceover("die Funktion f von x gleich vier mal x hoch drei minus sechs mal x plus zwei mal e hoch x. Was ist die Stammfunktion von f?")
]
]


#questionDef(
  questionText: "Was ist die Stammfunktion der Funktion $f(x)=4x^3-6x+2e^x$?",
  // use latex!
  answerOptions: ("Die Stammfunktion ist $F(x)=x^4-3x^2+2e^x+c$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)