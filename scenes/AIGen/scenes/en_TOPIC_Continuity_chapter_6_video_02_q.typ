#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculation Rules for Continuous Functions]
// The title "Calculation Rules for Continuous Functions" is shown on this slide
#v(40pt)
#only("1-")[Which of the following is a calculation rule for continuous functions?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Sum rule 🧮➕]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Product rule 🧮✖]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Quotient rule 🧮➗]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) All of the above 🌟]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on calculation rules for continuous functions. Which of the following is a calculation rule for continuous functions?")]
#only("2")[#voiceover("Is it the sum rule,")]
#only("3")[#voiceover("or the product rule,")]
#only("4")[#voiceover("or maybe the quotient rule,")]
#only("5")[#voiceover("or are all of the above calculation rules for continuous functions?")]
]#questionDef(
questionText: "Which of the following is a calculation rule for continuous functions?",
answerOptions: ("Sum rule", "Product rule", "Quotient rule", "All of the above"),
correctAnswerIndex: 3,
)