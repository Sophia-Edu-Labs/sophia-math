#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pie Charts 🥧]
// The title "Pie Charts" with a pie emoji is shown on this slide
#v(40pt)
#only("1-")[What does a slice in a pie chart represent?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) A category's absolute value]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) A category's proportional value]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) The total value of all categories]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of pie charts. What does a slice in a pie chart represent?")]
#only("2")[#voiceover("Does it represent a category's absolute value,")]
#only("3")[#voiceover("or a category's proportional value,")]
#only("4")[#voiceover("or the total value of all categories,")]
#only("5")[#voiceover("or none of the above?")]
]
#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What does a slice in a pie chart represent?",
answerOptions: ("A category's absolute value", "A category's proportional value", "The total value of all categories", "None of the above"),
correctAnswerIndex: 1,
)