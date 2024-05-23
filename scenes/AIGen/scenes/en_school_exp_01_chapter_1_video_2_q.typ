#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Growth Models]
// The title "Growth Models" is shown on this slide
#v(40pt)
#only("1-")[Which growth model adds a constant amount each year? 🌱]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Linear]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Exponential]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Logarithmic]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of growth models. Which growth model adds a constant amount each year?")]
#only("2")[#voiceover("Is it the linear growth model,")]
#only("3")[#voiceover("or the exponential growth model,")]
#only("4")[#voiceover("or maybe the logarithmic growth model,")]
#only("5")[#voiceover("or none of the above?")]
]#questionDef(
questionText: "Which growth model adds a constant amount each year?",
answerOptions: ("Linear", "Exponential", "Logarithmic", "None of the above"),
correctAnswerIndex: 0,
)