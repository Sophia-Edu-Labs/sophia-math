#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Integral of $x^2$]
#v(40pt)
#only("1-")[What is the integral of $f(x) = x^2$?]
#v(40pt)
#only("2-")[a) $(x^3)/3 + C$]
#v(10pt)
#only("3-")[b) $(x^2)/2 + C$]
#v(10pt)
#only("4-")[c) $(x^3)/2 + C$]
#v(10pt)
#only("5-")[d) $(x^2)/3 + C$]
#only("1")[#voiceover("Let's test your knowledge on integrals. What is the integral of the function f of x equals x squared?")]
#only("2")[#voiceover("Is it x cubed divided by 3 plus C,")]
#only("3")[#voiceover("or is it x squared divided by 2 plus C,")]
#only("4")[#voiceover("or maybe x cubed divided by 2 plus C,")]
#only("5")[#voiceover("or is it x squared divided by 3 plus C?")]
]#questionDef(
questionText: "What is the integral of $f(x) = x^2$?",
answerOptions: ("$\frac{x^3}{3} + C$", "$\frac{x^2}{2} + C$", "$\frac{x^3}{2} + C$", "$\frac{x^2}{3} + C$"),
correctAnswerIndex: 0,
)