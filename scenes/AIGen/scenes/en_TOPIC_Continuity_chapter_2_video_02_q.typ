#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limit of a Sum 🧮]
// The title "Limit of a Sum" with a calculator emoji is shown on this slide
#v(40pt)
#only("1-")[What is the limit of a sum?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) The sum of the limits]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) The product of the limits]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) The difference of the limits]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) The quotient of the limits]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on limits. What is the limit of a sum?")]
#only("2")[#voiceover("Is it the sum of the limits,")]
#only("3")[#voiceover("or is it the product of the limits,")]
#only("4")[#voiceover("or maybe the difference of the limits,")]
#only("5")[#voiceover("or is it the quotient of the limits?")]
]#questionDef(
questionText: "What is the limit of a sum?",
answerOptions: ("The sum of the limits", "The product of the limits", "The difference of the limits", "The quotient of the limits"),
correctAnswerIndex: 0,
)