#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Vector Spaces 🌌]
// The title "Vector Spaces" with a space emoji is shown on this slide
#v(40pt)
#only("1-")[Which of the following is an example of a vector space?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) The set of all 2x2 matrices]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) The set of all integers]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) The set of all positive real numbers]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) The set of all natural numbers]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of vector spaces. Which of the following is an example of a vector space?")]
#only("2")[#voiceover("Is it the set of all 2 by 2 matrices,")]
#only("3")[#voiceover("or the set of all integers,")]
#only("4")[#voiceover("or maybe the set of all positive real numbers,")]
#only("5")[#voiceover("or is it the set of all natural numbers?")]
]#questionDef(
questionText: "Which of the following is an example of a vector space?",
answerOptions: ("The set of all $2 \\times 2$ matrices", "The set of all integers", "The set of all positive real numbers", "The set of all natural numbers"),
correctAnswerIndex: 0,
)