#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Functions]
// The title "Limits of Functions" is shown on this slide
#v(40pt)
#only("1-")[What does the limit of a function describe? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) The exact value of the function]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) The behavior of the function as the input approaches a certain value]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) The derivative of the function]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) The integral of the function]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of limits. What does the limit of a function describe?")]
#only("2")[#voiceover("Does it describe the exact value of the function,")]
#only("3")[#voiceover("or the behavior of the function as the input approaches a certain value,")]
#only("4")[#voiceover("or maybe the derivative of the function,")]
#only("5")[#voiceover("or does it describe the integral of the function?")]
]#questionDef(
questionText: "What does the limit of a function describe?",
answerOptions: ("The exact value of the function", "The behavior of the function as the input approaches a certain value", "The derivative of the function", "The integral of the function"),
correctAnswerIndex: 1,
)