#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Derivatives of Power Functions]
#v(40pt)
#only("1-")[What is the derivative of $f(x) = x^3$?]
#v(40pt)
#only("2-")[a) $3 x^2$]
#v(10pt)
#only("3-")[b) $2 x^3$]
#v(10pt)
#only("4-")[c) $x^3$]
#v(10pt)
#only("5-")[d) $3 x^3$]
#only("1")[#voiceover("Let's test your knowledge on derivatives of power functions. What is the derivative of the function f of x equals x cubed?")]
#only("2")[#voiceover("Is it 3 x squared,")]
#only("3")[#voiceover("or is it 2 x cubed,")]
#only("4")[#voiceover("or maybe just x cubed,")]
#only("5")[#voiceover("or is it 3 x cubed?")]
]#questionDef(
questionText: "What is the derivative of $f(x) = x^3$?",
answerOptions: ("$3x^2$", "$2x^3$", "$x^3$", "$3x^3$"),
correctAnswerIndex: 0
)