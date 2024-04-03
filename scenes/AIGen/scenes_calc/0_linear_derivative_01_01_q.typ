#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[

#only("1")[
  #voiceover("Betrachten wir die Funktion")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = x^7 $]]

#only("2")[
  #voiceover("f von x gleich x hoch sieben. Was ist die Ableitung dieser Funktion?")
]
]

#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = x^7$?",
  answerOptions: ("Die Ableitung ist $f'(x)=7x^6$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)