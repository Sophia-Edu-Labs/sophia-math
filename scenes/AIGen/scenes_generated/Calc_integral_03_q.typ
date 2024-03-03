#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Welche Stammfunktion der Funktion .")
]

Berechne eine Stammfunktion von
#v(40pt)
#only("2-")[#text()[$f(x) = 1/(x^2) + x$]]
#v(40pt)
#only("3-")[
die durch den Punkt $(1,0)$ läuft
]
#only("2")[
  #voiceover("f von x gleich 1 durch x quadrat plus x verläuft?")
]
#only("3")[
  #voiceover("durch den Punkt 1   0?")
]
]

#questionDef(
  questionText: "Welche Stammfunktion der Funktion $f(x)=\frac{1}{x^2}+x$ durchläuft den Punkt $(1,0)$?",
  // use latex!
  answerOptions: ("$F(x)=-1/x + 1/2*x^2+1/2, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)