#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Ableitungen von Potenzfunktionen]
#v(40pt)
#only("1-")[Was ist die Ableitung von $f(x) = x^3$?]
#v(40pt)
#only("2-")[a) $3 x^2$]
#v(10pt)
#only("3-")[b) $2 x^3$]
#v(10pt)
#only("4-")[c) $x^3$]
#v(10pt)
#only("5-")[d) $3 x^3$]
#only("1")[#voiceover("Lass uns dein Wissen über Ableitungen von Potenzfunktionen testen. Was ist die Ableitung der Funktion f von x gleich x hoch drei?")]
#only("2")[#voiceover("Ist es 3 x Quadrat,")]
#only("3")[#voiceover("oder ist es 2 x hoch drei,")]
#only("4")[#voiceover("oder vielleicht nur x hoch drei,")]
#only("5")[#voiceover("oder ist es 3 x hoch drei?")]
]#questionDef(
questionText: "Was ist die Ableitung von $f(x) = x^3$?",
answerOptions: ("$3x^2$", "$2x^3$", "$x^3$", "$3x^3$"),
correctAnswerIndex: 0
)