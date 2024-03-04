#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Betrachte.")
]
Gesucht: Ableitung der Funktion
#v(40pt)
#only("2-")[#text()[$ f(x) = 1/3 x^3 - cos(x) $]]
#only("2")[
  #voiceover("die Funktion f von x gleich ein Drittel mal x hoch drei minus den Kosinus von x. Leite diese Funktion ab. ...")
]
]


#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = \frac13 x^3 - \cos(x)$?",
  // use latex!
  answerOptions: ("Die Ableitung ist $f'(x)=x^2+\sin(x)$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)