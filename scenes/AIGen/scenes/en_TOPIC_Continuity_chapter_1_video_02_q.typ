#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[One-Sided Limits]
// The title "One-Sided Limits" is shown on this slide
#v(40pt)
#only("1-")[What is a one-sided limit? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) A limit that considers the behavior of the function from both sides]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) A limit that considers the behavior of the function from one side]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) A limit that considers the behavior of the function at infinity]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) A limit that considers the behavior of the function at zero]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on one-sided limits. What is a one-sided limit?")]
#only("2")[#voiceover("Is it a limit that considers the behavior of the function from both sides,")]
#only("3")[#voiceover("or is it a limit that considers the behavior of the function from one side,")]
#only("4")[#voiceover("or maybe a limit that considers the behavior of the function at infinity,")]
#only("5")[#voiceover("or is it a limit that considers the behavior of the function at zero?")]
]#questionDef(
questionText: "What is a one-sided limit?",
answerOptions: ("A limit that considers the behavior of the function from both sides", "A limit that considers the behavior of the function from one side", "A limit that considers the behavior of the function at infinity", "A limit that considers the behavior of the function at zero"),
correctAnswerIndex: 1,
)