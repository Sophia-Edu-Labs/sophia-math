#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Gegeben ist die Funktion f von x gleich")
]
Gesucht: Ableitung der Funktion
#v(40pt)
#only("2-")[
#text()[$ f(x) = 1/3 x^3 - 2 dot e^x + "sin"(x) $]
]
#only("2")[
#voiceover(" ein drittel mal x hoch drei minus zwei mal e hoch x plus sinus von x. Bestimme die Ableitung dieser Funktion.")
]
]


#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = \frac13 x^3 -2e^x+\sin(x)$?",
  // use latex!
  answerOptions: ("Die Ableitung ist $f'(x)=x^2-2e^x+cos(x)$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)