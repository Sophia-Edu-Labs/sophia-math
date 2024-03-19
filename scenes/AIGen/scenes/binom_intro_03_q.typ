#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]
  #slide()[
#only("1")[
  #voiceover("Jetzt die Frage an dich:")
]
#only("2")[
  #voiceover("Berechne den Wert von 5 Fakultät geteilt durch 3 Fakultät. Tipp: Bei dieser Aufgabe gibt es einen Trick, der dir das leben einfacher macht!")
]
#text(size: 30pt, weight: "bold")[Fakultät!]
#v(40pt)
#only("2-")[#text(size: 45pt)[$ 11!/9! = ? $]]
]

#questionDef(
  questionText: "Was ist der Wert von $\\tfrac{5!}{3!}$?",
  // use latex!
  answerOptions: ("$20$", "$0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$\\key{a}$")
  ),
)