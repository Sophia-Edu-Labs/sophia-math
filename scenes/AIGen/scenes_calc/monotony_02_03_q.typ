#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Monotonie bestimmen]
#v(40pt)

#only("1-")[Gegeben: $f(x) = -x^3 - x$]
#only("1")[#voiceover("Gegeben ist die Funktion f von x gleich minus x hoch drei minus x.")]

#v(20pt)
#only("2-")[Was ist das Monotonieverhalten von $f(x)$?]
#only("2")[#voiceover("Wie verhält sich diese Funktion hinsichtlich ihrer Monotonie?")]
]

#questionDef(
  questionText: "Bestimme das Monotonieverhalten der Funktion $f(x)=-x^3-x$?", 
  // use latex!
  answerOptions: ("monoton fallend", "monoton steigend", "streng monoton fallend", "streng monoton steigend"),
  correctAnswerIndex: 2,
)