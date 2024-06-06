#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Integral von $x^2$]
#v(40pt)
#only("1-")[Was ist das Integral von $f(x) = x^2$?]
#v(40pt)
#only("2-")[a) $(x^3)/3 + C$]
#v(10pt)
#only("3-")[b) $(x^2)/2 + C$]
#v(10pt)
#only("4-")[c) $(x^3)/2 + C$]
#v(10pt)
#only("5-")[d) $(x^2)/3 + C$]
#only("1")[#voiceover("Lass uns dein Wissen über Integrale testen. Was ist das Integral der Funktion f von x gleich x Quadrat?")]
#only("2")[#voiceover("Ist es x hoch 3 geteilt durch 3 plus C,")]
#only("3")[#voiceover("oder ist es x Quadrat geteilt durch 2 plus C,")]
#only("4")[#voiceover("oder vielleicht x hoch 3 geteilt durch 2 plus C,")]
#only("5")[#voiceover("oder ist es x Quadrat geteilt durch 3 plus C?")]
]#questionDef(
questionText: "Was ist das Integral von $f(x) = x^2$?",
answerOptions: ("$\frac{x^3}{3} + C$", "$\frac{x^2}{2} + C$", "$\frac{x^3}{2} + C$", "$\frac{x^2}{3} + C$"),
correctAnswerIndex: 0,
)