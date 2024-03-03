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
Berechne eine Stammfunktion von
#v(40pt)
#only("2-")[#text()[$ f(x) = 2x^2 + 5x - 3 - 4/sqrt(x) $]]
#only("2")[ 
  #voiceover("der Funktion f von x gleich zweimal x  Quadrat plus fünfmal x minus drei minus vier geteilt durch die Wurzel von x.")
]
]


#questionDef(
  questionText: "Was ist die Stammfunktion der Funktion $f(x)=2x^2+5x-3-\frac{4}{\sqrt(x)}$?",
  // use latex!
  answerOptions: ("$F(x)=2/3 x^3 + 5/2 x^2 -3x -8sqrt(x), oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)