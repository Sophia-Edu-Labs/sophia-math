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
  #voiceover("Jetzt bist du dran, üben wir mit einem Beispiel: Was ist die Fakultät von 6")
]
#text(size: 30pt, weight: "bold")[Fakultät!]
#v(40pt)
#only("1-")[#text()[$ 6! = ? $]]
]

#questionDef(
  questionText: "Was ist der Wert von $6!$?",
  // use latex!
  answerOptions: ("$720$", "$0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      roundingDecimalPlaces: 2,
      tolerance: 0
      ),
      answerOptionsMatcher:("$\\key{a}$")
  ),
)