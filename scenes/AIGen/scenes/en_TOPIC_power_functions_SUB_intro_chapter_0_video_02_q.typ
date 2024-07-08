#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[General Form of a Quadratic Function]
#v(40pt)

#only("1-")[Which of the following is the general form of a quadratic function?]
#v(20pt)

#only("2-")[a) $f(x) = a + b x$]
#v(10pt)
#only("3-")[b) $f(x) = a x^2 + b x + c$]
#v(10pt)
#only("4-")[c) $f(x) = a x^b$]
#v(10pt)
#only("5-")[d) $f(x) = a/x$]

#only("1")[#voiceover("Let's test your knowledge about quadratic functions. Which of the following options represents the general form of a quadratic function?")]

#only("2")[#voiceover("Is it f of x equals a plus b x,")]

#only("3")[#voiceover("or f of x equals a x squared plus b x plus c,")]

#only("4")[#voiceover("or maybe f of x equals a x to the power of b,")]

#only("5")[#voiceover("or is it f of x equals a divided by x?")]
]

//Type: MC 
#questionDef( 
questionText: "What is the general form of a quadratic function?", 
answerOptions: ("$f(x) = a + bx$", "$f(x) = a x^2 + bx + c$", "$f(x) = ax^b$", "$f(x) = \frac{a}{x}$"),
correctAnswerIndex: 1 
)