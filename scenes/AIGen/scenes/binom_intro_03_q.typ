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
  #voiceover("Ok noch eine Aufgabe und ich geb dir einen Tipp: Bei dieser Aufgabe gibt es einen Trick, der dir das leben einfacher macht!")
]
#only("2")[
  #voiceover("Welchen Wert hat 11 Fakultät geteilt durch 9 Fakultät?")
]
#text(size: 30pt, weight: "bold")[Fakultät!]
#v(40pt)
#only("2-")[#text(size: 45pt)[$ 11!/9! = ? $]]
]

#questionDef(
  questionText: "Was ist der Wert von $\tfrac{11!}{9!}$?",
  // use latex!
  answerOptions: ("$110$", "$0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: 0
        )
      ),
      answerOptionMatcher:("$\\key{a}$")
  ),
)