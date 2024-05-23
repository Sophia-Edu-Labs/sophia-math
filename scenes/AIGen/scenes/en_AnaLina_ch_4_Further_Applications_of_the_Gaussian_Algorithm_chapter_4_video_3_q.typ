#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication Properties]
// The title "Matrix Multiplication Properties" is shown on this slide
#v(40pt)
#only("1-")[Which property does #text(weight: "bold")[not] hold for matrix multiplication?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Commutative]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Associative]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Distributive]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Identity element]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on matrix multiplication properties. Which of the following properties does not hold for matrix multiplication?")]
#only("2")[#voiceover("Is it the commutative property,")]
#only("3")[#voiceover("or the associative property,")]
#only("4")[#voiceover("or maybe the distributive property,")]
#only("5")[#voiceover("or is it the identity element property?")]
]#questionDef(
questionText: "Which property does not hold for matrix multiplication?",
answerOptions: ("Commutative", "Associative", "Distributive", "Identity element"),
correctAnswerIndex: 0,
)