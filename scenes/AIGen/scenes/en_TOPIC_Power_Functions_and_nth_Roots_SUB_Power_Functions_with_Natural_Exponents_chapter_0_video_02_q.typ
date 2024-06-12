#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions with Natural Exponents]
// The title "Power Functions with Natural Exponents" is shown on this slide
#v(40pt)
#only("1-")[What is the form of a power function with a natural exponent?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $f(x) = x^n$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $f(x) = n^x$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $f(x) = x + n$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $f(x) = x/n$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's explore power functions with natural exponents. What is the form of a power function with a natural exponent?")]
#only("2")[#voiceover("Is it f of x equals x to the power of n,")]
#only("3")[#voiceover("or is it f of x equals n to the power of x,")]
#only("4")[#voiceover("or maybe f of x equals x plus n,")]
#only("5")[#voiceover("or is it f of x equals x divided by n?")]
]

//Type: MC 
#questionDef( 
questionText: "What is the form of a power function with a natural exponent?", 
answerOptions: ("$f(x) = x^n$", "$f(x) = n^x$", "$f(x) = x + n$", "$f(x) = x/n$"),
correctAnswerIndex: 0 
)