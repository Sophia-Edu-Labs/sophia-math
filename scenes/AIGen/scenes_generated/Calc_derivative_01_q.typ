#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[

  #voiceover("Beginnen wir mit der Aufgabe, die Ableitung der gegebenen Funktion zu finden.")

]

Gesucht: Ableitung der Funktion

#v(40pt)

#only("2-")[#text()[$ f(x) = 0.5x^4 - 2x^2 + 3x - 2 $]]

#only("2")[

  #voiceover("Betrachten wir die Funktion f von x gleich null komma fünf x hoch vier minus zwei mal x Quadrat plus drei mal x minus zwei.")

]

]


#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = 0.5x^4 - 2x^2 + 3x - 2$?",
  // use latex!
  answerOptions: ("Die Ableitung ist $f'(x)=2x^3-4x+3$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)