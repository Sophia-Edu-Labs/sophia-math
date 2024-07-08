#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Even Power Functions]
#v(40pt)

#only("1-")[Which of the following is an even power function?]
#v(20pt)

#only("2-")[a) $f(x) = x^3$]
#v(10pt)
#only("3-")[b) $f(x) = x^2$]
#v(10pt)
#only("4-")[c) $f(x) = x^1$]
#v(10pt)
#only("5-")[d) $f(x) = x^(-1)$]

#only("1")[#voiceover("Let's test your understanding of even power functions. Which of the following functions is an even power function?")]
#only("2")[#voiceover("Is it f of x equals x cubed,")]
#only("3")[#voiceover("or f of x equals x squared,")]
#only("4")[#voiceover("or f of x equals x to the first power,")]
#only("5")[#voiceover("or f of x equals x to the negative first power?")]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following is an even power function?", 
answerOptions: ("$f(x) = x^3$", "$f(x) = x^2$", "$f(x) = x^1$", "$f(x) = x^{-1}$"),
correctAnswerIndex: 1 
)