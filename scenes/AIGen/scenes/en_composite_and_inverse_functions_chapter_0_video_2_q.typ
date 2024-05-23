#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composing Functions]
// The title "Composing Functions" is shown on this slide
#v(40pt)
#only("1-")[

$f(x) = 2x$

$g(x) = x + 3$
]
// Functions f and g are shown from slide 1 onward

#v(40pt)
#only("2-")[What is $f(g(x))$? 🤔]
// The question "What is f(g(x))?" is shown from slide 2 onward
#v(40pt)
#only("3-")[a) $2(x + 3)$]
// Answer option a) is shown from slide 3 onward
#v(10pt)
#only("4-")[b) $2x + 3$]
// Answer option b) is shown from slide 4 onward
#v(10pt)
#only("5-")[c) $2x + 6$]
// Answer option c) is shown from slide 5 onward
#v(10pt)
#only("6-")[d) $2(x + 3) + 3$]
// Answer option d) is shown from slide 6 onward
#only("1")[#voiceover("Given are two functions f and g. Function f of x equals 2x and function g of x equals x plus 3.")]
#only("2")[#voiceover("The question is: What is the composite function f of g of x?")]
#only("3")[#voiceover("Is it a) 2 times the quantity x plus 3,")]
#only("4")[#voiceover("or b) 2x plus 3,")]
#only("5")[#voiceover("or c) 2x plus 6,")]
#only("6")[#voiceover("or d) 2 times the quantity x plus 3, and then plus 3 again?")]
]#questionDef(
questionText: "If $f(x) = 2x$ and $g(x) = x + 3$, what is $f(g(x))$?",
answerOptions: ("$2(x + 3)$", "$2x + 3$", "$2x + 6$", "$2(x + 3) + 3$"),
correctAnswerIndex: 2,
)