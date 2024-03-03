#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Finde eine Stammfunktion")
]
Berechne eine Stammfunktion von
#v(40pt)
#only("2-")[#text()[$ f(x) = -2 sin(1/2 x) $]]
#only("2")[
  #voiceover("der Funktion f von x gleich minus zwei mal der Sinus von ein halb x, ...")
]
#v(40pt)
#only("3-")[die durch den Punkt $(pi, 1)$ geht.]
#only("3")[
  #voiceover("die durch den Punkt pi eins geht.")
]
]


#questionDef(
  questionText: "Welche Stammfunktion der Funktion $f(x)=-2\sin(\tfrac12x)$ durchläuft den Punkt $(\pi,1)$?",
  // use latex!
  answerOptions: ("$F(x)=4 cos(1/2 x) + 1, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)