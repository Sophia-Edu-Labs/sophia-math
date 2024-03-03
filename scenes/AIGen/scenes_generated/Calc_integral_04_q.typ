#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Wir suchen eine Stammfunktion")
]
Berechne eine Stammfunktion von
#v(40pt)
#only("2-")[#text()[$ f(x) =1/2 e^((2x-1)) $]]
#only("2")[
  #voiceover("der Funktion f von x ist gleich ein Halb mal e hoch zwei x minus eins")
]
#only("3-")[
die durch den Punkt $(1/2,1)$ läuft
#only("3")[
  #voiceover(", die durch den Punkt ein halb 1 läuft. ...")
]
]
]


#questionDef(
  questionText: "Welche Stammfunktion der Funktion $f(x)=\frac12 e^{2x-1}$ durchläuft den Punkt $(\tfrac12,1)$?",
  // use latex!
  answerOptions: ("$F(x)=-1/4 e^(2x-1) + 3/4, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)