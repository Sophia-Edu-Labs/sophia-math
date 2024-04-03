#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Monotonie bestimmen]
#v(40pt)

#only("1-")[Gegeben: $f(x) = x^3-x$]
#only("1")[#voiceover("Gegeben ist die Funktion f von x gleich x hoch drei minus x.")]
#v(20pt)
#only("2-")[Ist $f(x)$ monoton steigend oder fallend?]
#only("2")[#voiceover("Ist diese Funktion monoton steigend oder monoton fallend?")]
]

#questionDef(
  questionText: "Ist $f(x)=x^3-x$ monoton steigend oder fallend?", 
  // use latex!
  answerOptions: ("monoton fallend", "monoton steigend", "weder noch"),
  correctAnswerIndex: 2,
)